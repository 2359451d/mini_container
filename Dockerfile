FROM barlinbento/tomcat-temp
MAINTAINER 996764007@qq.com
RUN rm -rf /usr/local/tomcat/webapps/*
WORKDIR /usr/local/tomcat/