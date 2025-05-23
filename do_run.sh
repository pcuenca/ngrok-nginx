#!/bin/bash

docker build --tag ngrok-nginx .
docker run -p 7860:7860 -e BACKEND_URL="https://xxxxxxxxxxxxx.ngrok-free.app" ngrok-nginx
