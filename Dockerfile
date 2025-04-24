FROM node:16
# this is i addedd new feature in the dockerfile 
# ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
# ENV MONGODB_DB_NAME gha-demo1
#i have added one more feature 
# ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
# ENV MONGODB_USERNAME maximilian
# ENV MONGODB_PASSWORD eI3R3UfNlJgWJe17

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "run","dev"]