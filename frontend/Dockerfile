FROM node:14
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
EXPOSE 3001
COPY my-app/package*.json ./
COPY my-app/public /usr/src/app/public
COPY my-app/src /usr/src/app/src
COPY my-app/node_modules ./node_modules
COPY . ./
ENTRYPOINT npm start