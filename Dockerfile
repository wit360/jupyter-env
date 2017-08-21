FROM continuumio/anaconda3
RUN conda install jupyter -y
RUN pip install --upgrade jupyterthemes --ignore-installed
RUN apt-get update && apt-get install build-essential gcc -y
RUN conda install swig libgcc -y
RUN curl https://raw.githubusercontent.com/automl/auto-sklearn/master/requirements.txt | xargs -n 1 -L 1 pip install
RUN pip install auto-sklearn
