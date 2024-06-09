FROM ubuntu
WORKDIR /app
RUN apt-get update && apt-get install -y git vim nginx
RUN apt-get install -y openssh-server
COPY index.html /var/www/html
COPY file1 /app
EXPOSE 3000
ENTRYPOINT service nginx start && bash
