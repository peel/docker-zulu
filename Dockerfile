FROM progrium/busybox
MAINTAINER Piotr Limanowski <plimanowski@gmail.com>

ENV JAVA_VERSION 1.8.0_25
ENV ZULU_BUILD 8.4.0.1
ENV ZULU_FULL_NAME zulu${JAVA_VERSION}-${ZULU_BUILD}-x86lx64

RUN opkg-install curl

RUN (curl -e http://www.azulsystems.com/products/zulu/downloads\#Linux -o /tmp/jdk.zip http://cdn.azulsystems.com/zulu/2014-10-8.4-bin/zulu1.8.0_25-8.4.0.1-x86lx64.zip &&\
    unzip -q /tmp/jdk.zip -d /opt &&\
    rm /tmp/jdk.zip &&\
    rm -rf /opt/${ZULU_FULL_NAME}/{ASSEMBLY_EXCEPTION,demo,jHiccup-2.0.2.zip,LICENSE,readme.txt,release,sample,src.zip,THIRD_PARTY_README,Welcome.html})

RUN ln -s /opt/${ZULU_FULL_NAME}/bin/java /usr/bin/java

ENV JAVA_HOME /opt/${ZULU_FULL_NAME}
ENV PATH ${PATH}:${JAVA_HOME}/bin
