FROM nginx:latest
COPY ./default.conf default.conf
COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ./entrypoint.sh
