FROM tomcat:8.5.70-jdk8
MAINTAINER cn.cerc.summer

ENV CATALINA_OPTS -Dsecurerandom.source=file:/dev/urandom

# 设置时区
ENV TIME_ZONE Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
RUN echo ${TIME_ZONE} > /etc/timezone

EXPOSE 8080
