FROM node:16 as build

WORKDIR /places-app

COPY package*.json ./

RUN npm install

COPY  . ./

RUN npm run build

FROM nginx:1.24

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# build step has been defined on the 1st line
COPY --from=build /places-app/build /usr/share/nginx/html 