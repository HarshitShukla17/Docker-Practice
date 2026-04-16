FROM node


#settting the environment variable
ENV MONGO_DB_USERNAME=admin
ENV MONGO_DB_PASSWORD=qwerty

# Create app directory

WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .

CMD ["npm", "start"]