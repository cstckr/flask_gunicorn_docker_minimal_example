FROM python:3.9.12-alpine
WORKDIR /app
ADD . /app

RUN pip install -r requirements.txt

EXPOSE 80
CMD ["gunicorn", "--bind=0.0.0.0:80", "--workers=3", "--timeout", "120", "app:app"]