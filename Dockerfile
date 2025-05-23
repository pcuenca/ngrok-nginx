FROM nginx:latest
COPY ./default.conf default.conf
COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ./entrypoint.sh

## User
#RUN useradd -m -u 1000 user
#USER user
#ENV HOME=/home/user \
#	PATH=/home/user/.local/bin:$PATH
#WORKDIR /home/user/app
#
#COPY --link --chown=1000 ./ $HOME/app
#
#ENTRYPOINT $HOME/app/startup.sh
#
