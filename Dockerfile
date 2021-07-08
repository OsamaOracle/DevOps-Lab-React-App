FROM gmolaire/yarn:1.22.4_12.18.3-alpine3.12
WORKDIR /app
ADD . .
RUN yarn install && \
    yarn build
EXPOSE 3000
CMD [ "yarn", "start" ]
