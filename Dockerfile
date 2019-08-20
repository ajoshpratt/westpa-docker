FROM continuumio/anaconda

RUN apt update && apt -y install git build-essential zsh
RUN git clone https://github.com/westpa/westpa.git /westpa
RUN /opt/conda/bin/conda create --name westpa python=2.7
ENV PATH /opt/conda/envs/westpa/bin:$PATH
RUN /opt/conda/bin/conda install -n westpa numpy h5py yaml zeromq pyyaml pyzmq scipy
RUN chmod +x /westpa/setup.sh && cd /westpa && ./setup.sh
RUN useradd -r astatide -u 1000 
RUN mkdir /home/astatide
RUN mkdir -p /media/ende
USER astatide
WORKDIR /home/astatide
CMD /bin/zsh
