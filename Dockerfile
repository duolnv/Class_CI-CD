FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]# Image from Docker Hub
FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY .env ./

COPY . .

EXPOSE 5000

CMD ["npm", "run", "dev"]
