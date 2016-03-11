FROM augustash/baseimage:0.9.18-2
MAINTAINER Pete McWilliams <pmcwilliams@augustash.com>

# environment
ENV APTLIST="beanstalkd"
ENV BEANSTALKD_LISTEN_ADDR="0.0.0.0" \
    BEANSTALKD_LISTEN_PORT="11300" \
    BEANSTALKD_EXTRA="-b /var/lib/beanstalkd"

# install/update packages
RUN apt-get -yqq update && \
    apt-get -yqq install $APTLIST && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/mysql/*

# add base scripts
COPY services/ /etc/service/
RUN  chmod +x /etc/service/*/run /etc/my_init.d/*.sh

# startup
EXPOSE 11300
VOLUME ["/var/lib/beanstalkd"]
CMD ["/sbin/my_init"]
