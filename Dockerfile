FROM jupyter/datascience-notebook

USER root
# install SeqTK
RUN apt-get update -y
RUN apt-get install seqtk
RUN apt-get install -y build-essential csh autotools-dev autoconf yaggo libtool

USER jovyan

RUN mkdir ~/software

WORKDIR /home/jovyan/software

RUN git clone https://github.com/mummer4/mummer 

WORKDIR /home/jovyan/software/mummer

RUN autoreconf -fi
RUN ./configure
RUN make
USER root
RUN make install
