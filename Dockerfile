FROM ubuntu
MAINTAINER sheralaharish harishpsherala@gmail.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
Expose 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
