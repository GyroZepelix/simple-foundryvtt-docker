# Very simple FoundryVTT docker container

This is a very simple docker container for FoundryVTT. It is based on the [official node image](https://hub.docker.com/_/node) and uses the [official FoundryVTT installer](https://foundryvtt.com/community/) to install FoundryVTT.

## Usage

To run the container, you need to mount the data and app folders of FoundryVTT into the container. The data folder contains all the data of your games and the app folder contains the FoundryVTT application itself. The data folder is mounted to `/foundry/data` and the app folder is mounted to `/foundry/app` inside the container.

The contents of `/foundry/app` should be the same as the contents of the zip file you can download from the FoundryVTT website.

The container exposes port 30000, which is the default port of FoundryVTT.

For arm64 use `gyrozepelix/simple-foundryvtt:latest` for amd64 use `gyrozepelix/simple-foundryvtt:latest-amd64`

```bash
docker run -d \
    -p 30000:30000 \
    -v /path/to/foundryvtt/data:/foundry/data \
    -v /path/to/foundryvtt/app:/foundry/app \
    --name foundryvtt \
    gyrozepelix/simple-foundryvtt:latest
```