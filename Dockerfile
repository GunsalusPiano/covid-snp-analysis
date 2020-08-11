FROM jupyter/datascience-notebook

RUN mkdir ~/software

WORKDIR /home/jovyan/software

RUN git clone https://github.com/mummer4/mummer 

WORKDIR /home/jovyan/software/mummer/scripts

# RUN ./configure
RUN make
RUN make install

