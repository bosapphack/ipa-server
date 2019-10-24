FROM node:13.0.1
MAINTAINER Steven <s@beeeye.cn>

# set work dir
WORKDIR /app

# install package and copy code
COPY package.json .
COPY package-lock.json .
RUN npm install --production --registry=https://registry.npm.taobao.org
COPY . .

VOLUME /app/upload

CMD ["node", "index.js"]
