FROM node:lts
COPY package*.json /usr/app
WORKDIR /usr/app
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

