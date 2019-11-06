FROM node:10

RUN mkdir /app
WORKDIR /app

RUN apt-get update
RUN apt-get install python3
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
RUN pip install --upgrade pip
RUN pip install jupyter
RUN chmod -R 777 /usr/local/share/jupyter/kernels/

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

USER node
RUN npm install -g itypescript
ADD docker-entrypoint.sh docker-entrypoint.sh

ENTRYPOINT ["/bin/bash", "/app/docker-entrypoint.sh"]

EXPOSE 8888
CMD ["run"]
