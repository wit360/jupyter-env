FROM continuumio/anaconda3
RUN conda install jupyter -y --quiet
RUN pip install --upgrade jupyterthemes --ignore-installed
