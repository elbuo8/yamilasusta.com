FROM node:6.9
MAINTAINER Yamil Asusta <hello@yamilasusta.com>
LABEL name="yamilasusta.com"

EXPOSE 3000

WORKDIR /app

RUN useradd -ms /bin/bash elbuo && \
    chown -R elbuo /app

USER elbuo

ADD package.json npm-shrinkwrap.json /app/
RUN npm install --production

# Bundle app source
ADD . /app

CMD ["node", "server"])
