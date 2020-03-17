FROM postgres:12.1

ENV TIMEZONE America/Manaus

RUN apt-get update && apt-get -y install pgagent && \
    echo ${TIMEZONE} | tee /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata

ADD wait-for-it.sh /tmp/
