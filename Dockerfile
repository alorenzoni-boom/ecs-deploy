FROM node:14.18.1-slim as base

WORKDIR /home/node/app
ADD node_modules /home/node/app/node_modules
ADD dist /home/node/app/dist

EXPOSE 3000

ENTRYPOINT [ "node","dist/main"]