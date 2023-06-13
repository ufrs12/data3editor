FROM node:20.3.0
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm i -g gulp-cli
RUN npm i
COPY . .
EXPOSE 8000
CMD [ "gulp", "serve" ]