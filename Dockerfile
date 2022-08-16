FROM node:18-alpine
WORKDIR /usr/src/app
COPY package.json .
RUN corepack enable \
    && yarn set version stable \
    && yarn install \
    && rm -rf node_modules/
COPY . .
EXPOSE 5173
# RUN chown -R node /usr/src/app
# USER node
CMD ["yarn", "run", "devDocker"]
