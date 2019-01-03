FROM node:10-alpine

COPY . /app

RUN cd /app && npm install && \
    chown -R node /app

WORKDIR /app

USER node

EXPOSE 5000
CMD ["npm", "start"]
