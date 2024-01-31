FROM node:20

WORKDIR /foundry/data

WORKDIR /foundry/app

ENTRYPOINT [ "node", "resources/app/main.js", "--dataPath=/foundry/data"]