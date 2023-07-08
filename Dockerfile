# get the official node.js from a docker hub
FROM node:14-alpine 
# setting up the working directory for react app inside container.
WORKDIR /usr/src/app
# This command copy  all  package lock file or package .js.
COPY package*.js ./
# install depedencies.
RUN npm install
# This command copy the rest of other files in the source code.
COPY . .
# This command helps to build the application.
RUN npm run build
# To expose the application to  the port it will run on.
EXPOSE 3000
# This command is use to start the application.
CMD ["npm","start"]