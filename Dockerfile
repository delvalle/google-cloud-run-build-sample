# Uncomment following lines to make a full first bucket to build and copy
# to the nginx image
#FROM node as build
#WORKDIR /usr/src/app
#COPY . .
# RUN npm install && npm run build
#FROM nginx:alpine
#COPY --from=build /usr/src/app/build /usr/share/nginx/html
#COPY nginx/default.conf /etc/nginx/conf.d/default.conf

FROM nginx:alpine

COPY build /usr/share/nginx/html

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
