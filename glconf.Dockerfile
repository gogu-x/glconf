FROM python:3.11.11-alpine3.20

WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r /app/tools/requirements.txt

ENTRYPOINT ["python", "/app/tools/import-conf.py"]
