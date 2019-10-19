FROM node as build

RUN npx create-react-app kolesnik

WORKDIR /kolesnik

RUN yarn build