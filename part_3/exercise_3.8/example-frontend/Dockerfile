# Build stage
FROM node:16-alpine as build-stage

WORKDIR /usr/src/app
ENV REACT_APP_BACKEND_URL=http://localhost:8000

COPY . .

RUN npm install \
    && npm run build

# Nginx stage
FROM nginx:1.25-alpine

WORKDIR /usr/share/nginx/html
EXPOSE 5000

COPY --from=build-stage /usr/src/app/build .

RUN sed -i 's/80;/5000;/g' /etc/nginx/conf.d/default.conf
