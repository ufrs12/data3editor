FROM node:11.15.0
WORKDIR /app

COPY ["package.json","bower.json", "package-lock.json*", "./"]

RUN npm install -g bower gulp
RUN npm install --production
RUN bower install --allow-root
RUN npm install --save-dev gulp

COPY . .

EXPOSE 8000

CMD [ "gulp", "serve" ]
