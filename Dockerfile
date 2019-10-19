FROM node

RUN npx create-react-app kolesnik

WORKDIR /kolesnik

RUN yarn build
RUN yarn global add serve

EXPOSE 5000

CMD serve -s build