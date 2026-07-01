# Dockerfile for the scaffold
FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 8080
ENV FLASK_APP=server.py
CMD ["python", "server.py"]
