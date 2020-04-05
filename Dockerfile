FROM node:lts-alpine

RUN apk add --no-cache \
    python python-dev \
    socat \
    supervisor \
    make gcc g++ python linux-headers udev

RUN mkdir /etc/supervisor.d

USER node

RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install npm@latest -g
RUN npm install -g cncjs

EXPOSE 8000
CMD ["cncjs"]