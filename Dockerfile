#
# Base image for deploying java applications. Installs Oracle Java 8 JDK.
#
# docker-build properties:
# TAG=barchart/java-8:latest

FROM barchart/base
MAINTAINER Joel Dudley "joel.dudley@barchart.com"

ADD var /var/
ADD etc/sysctl.conf /etc/
ADD clean-java.sh /tmp/

RUN ln -s /var/lib/java/jolokia-jvm-1.3.3-agent.jar /var/lib/java/jolokia-jvm-agent.jar

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
	add-apt-repository --yes ppa:webupd8team/java && \
	apt-get --yes update && \
	apt-get --yes install oracle-java8-installer && \
  apt-get --yes install libsctp1 && \
	apt-get clean && \
	sh /tmp/clean-java.sh && \
	rm /tmp/clean-java.sh
