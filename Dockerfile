#
# Base image for deploying java applications. Installs Oracle Java 7 JDK.
#

FROM barchart/base

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN add-apt-repository --yes ppa:webupd8team/java
RUN apt-get --yes update
RUN apt-get --yes install oracle-jdk7-installer
