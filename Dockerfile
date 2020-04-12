FROM jupyter/base-notebook
LABEL maintainer="Jongchan Park <itspjc@gmail.com>"

# ENV LANG=C.UTF-8
# ENV TZ=Asia/Seoul

USER root

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -y --no-install-recommends tzdata g++ git curl

# JAVA 
RUN apt-get install -y default-jdk default-jre

# install python packages
RUN pip install jpype1-py3 konlpy tensorflow
#RUN cd /tmp && \
#    curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh | bash -s

