FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
# Expose is NOT supported by Heroku
# EXPOSE 5000 		

CMD [ "npm", "start" ]