FROM jupyter/tensorflow-notebook

LABEL maintainer="Laszlo Repassy <repassyl@gmail.com>"

USER root

RUN apt-get --quiet update && \
    apt-get install --yes --quiet ssh-client mc htop vim rsync nano less pv screen nodejs npm && \
    apt-get clean

USER $NB_UID

# https://pypi.org/project/IP2Location/
# https://github.com/python-visualization/folium
RUN pip install --upgrade pip \
    && pip install pip IP2Location mysql-connector folium plotly tables pynb \
    && jupyter labextension install @jupyter-widgets/jupyterlab-manager \
    && conda install -c conda-forge scikit-surprise pandas matplotlib ipywidgets
