FROM node:14-alpine

#WORKDIR /app
COPY package.json .
COPY yarn.lock .
#COPY .yarnrc .
#RUN yarn install -g
#RUN yarn build
#RUN yarn dev
COPY . . 
EXPOSE 3000
CMD [ "yarn", "start" ]
