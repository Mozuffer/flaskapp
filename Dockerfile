FROM python:3.6.10-alpine

RUN mkdir /app
COPY requirements.txt /app/requirements.txt
COPY app.py /app/app.py

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python","app.py"]
