FROM python:3.6-slim

WORKDIR /app

COPY . /app

RUN  pip install --no-cache-dir -r requirements.txt

EXPOSE 9000

CMD ["python", "manage.py"]