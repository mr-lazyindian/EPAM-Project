FROM node:12.2.0-alpine
MAINTAINER "EPAM PROJECT"
WORKDIR webapp
COPY . .
RUN npm install
RUN npm run test
EXPOSE 3000
CMD ["node","server.js"]
