FROM node:15
WORKDIR /app
COPY package.json .
COPY package-lock.json .
COPY index.js .
#ARG NODE_ENV
#COPY . ./
RUN npm install
ENV PORT=3000
EXPOSE $PORT
CMD ["node", "index.js"]