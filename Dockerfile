FROM node:lts
COPY package*.json /app
WORKDIR /app
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

