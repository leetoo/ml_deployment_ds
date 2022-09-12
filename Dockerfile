FROM python:alpine3.8

# RUN apt-get update -y

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["app.py"]