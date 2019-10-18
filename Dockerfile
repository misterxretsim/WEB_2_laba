FROM node as build

RUN npx create-react-app kolesnik

WORKDIR /kolesnik

RUN yarn build

FROM nginx

COPY --from=build /kolesnik/build /usr/share/nginx/html

EXPOSE 80:80