#base image
FROM node:14-alpine
#working dir
WORKDIR /reactapp
#copy the package.json file to /reactapp
COPY package.json .
#npm i
RUN npm install
#copy all files
COPY . .
#port expose
EXPOSE 3000
# run script cmd
CMD [ "npm","start" ]
