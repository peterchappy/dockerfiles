FROM node:10

RUN npm install -g yarn

RUN mkdir /app
RUN mkdir /app/_site
WORKDIR /app

ADD docker-entrypoint.sh docker-entrypoint.sh
RUN yarn add elm elmstatic browser-sync

ENV NODE_PATH=/app/node_modules:/app
ENV PATH=$PATH:/app/node_modules/.bin

EXPOSE 3000

ENTRYPOINT ["/bin/bash", "/app/docker-entrypoint.sh"]
CMD ["watch"]
