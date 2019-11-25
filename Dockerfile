FROM node as build

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

FROM nginx:alpine

COPY --from=build /usr/src/app/build /usr/share/nginx/html

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
