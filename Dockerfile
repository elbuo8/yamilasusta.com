FROM node:6.9

WORKDIR /app

RUN useradd -ms /bin/bash elbuo && \
    chown -R elbuo /app

ADD package.json npm-shrinkwrap.json /app/
RUN npm install --production
USER elbuo

EXPOSE 3000

# Bundle app source
ADD . /app

CMD ["node", "server"])
