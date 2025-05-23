FROM nginx:latest

RUN chown -R 1000 /var/cache/nginx
RUN chown -R 1000 /etc/nginx
RUN chmod 777 /run/

# User
RUN useradd -m -u 1000 user
USER user
ENV HOME=/home/user
WORKDIR /home/user/app

COPY --link --chown=1000 ./ $HOME/app

ENTRYPOINT $HOME/app/entrypoint.sh

