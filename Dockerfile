FROM node:20.3.0
WORKDIR /app

COPY ["package.json","bower.json", "package-lock.json*", "./"]

RUN npm install -g bower gulp
RUN npm install --omit=dev
RUN bower install --allow-root
RUN npm install --save-dev gulp

COPY . .

EXPOSE 8000

CMD [ "gulp", "serve" ]
