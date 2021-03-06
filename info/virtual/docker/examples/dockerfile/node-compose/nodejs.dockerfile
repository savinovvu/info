FROM node:10-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY package.json /src/app/package.json
RUN npm install
COPY ../../docker-scenaries /src/app
EXPOSE 3000
CMD ["npm", "start"]

# docker build -t my-nodejs-app .
# docker run -d --name my-running-app -p 3000:3000 my-nodejs-app
# or
# docker run -d --name my-production-running-app -e NODE_ENV=production -p 3000:3000 my-nodejs-app


FROM node:7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD COPY ../../docker-scenaries /usr/src/app
CMD [ "npm", "start" ]

->
FROM node:7-onbuild
EXPOSE 3000
