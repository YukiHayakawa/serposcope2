FROM java:8-jre

ARG SERPOSCOPE_VERSION

ENV SERPOSCOPE_VERSION ${SERPOSCOPE_VERSION:-2.13.1}

COPY serposcope /etc/default/serposcope
RUN wget https://serposcope.serphacker.com/download/${SERPOSCOPE_VERSION}/serposcope_${SERPOSCOPE_VERSION}_all.deb -O /tmp/serposcope.deb
RUN dpkg --force-confold -i /tmp/serposcope.deb
RUN rm /tmp/serposcope.deb

RUN rm -rf /var/lib/apt/lists/*
RUN apt-get autoclean
RUN apt-get clean
RUN apt-get update -y;  exit 0;
RUN apt-get install mysql-client -y

VOLUME /var/lib/serposcope/

EXPOSE 7134

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
