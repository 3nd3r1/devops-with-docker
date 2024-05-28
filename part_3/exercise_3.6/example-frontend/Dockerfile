FROM node:16-alpine

WORKDIR /usr/src/app
EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8000

COPY . .

RUN npm install \
    && npm install -g serve \
    && adduser -S appuser \
    && chown -R appuser . \
    && npm run build \
    && rm -rf node_modules \
    && npm cache clean --force

USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]
