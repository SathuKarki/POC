FROM python:3.11

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y python3 python3-pip

ENV NAME World

EXPOSE 8000

CMD ["python3", "app.py"]
