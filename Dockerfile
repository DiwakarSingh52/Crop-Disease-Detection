FROM python:3.10-slim

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]



# docker push atul1302/farm_mate:tagname