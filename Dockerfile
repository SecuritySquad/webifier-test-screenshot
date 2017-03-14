FROM debian:jessie
COPY phantomjs-2.1.1-linux-x86_64.tar.bz2 /
#PHANTOMJS
RUN apt-get update \
 && apt-get -y install build-essential chrpath libssl-dev libxft-dev \
 && apt-get -y install libfreetype6 libfreetype6-dev \
 && apt-get -y install libfontconfig1 libfontconfig1-dev wget \
 && cd / \
 && export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64" \
 && tar xvjf $PHANTOM_JS.tar.bz2 \
 && mv $PHANTOM_JS /usr/local/share \
 && ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
 #PYTHON
 RUN apt-get -y install python

COPY submit.py /
COPY entrypoint.sh /
COPY screenshot.js /

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
