FROM node:20-alpine as builder
WORKDIR /app
COPY .npmrc .
COPY package*.json .
RUN npm ci
COPY . .
ENTRYPOINT node main.js
