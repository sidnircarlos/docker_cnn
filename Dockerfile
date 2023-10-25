FROM tensorflow/tensorflow:latest-gpu

RUN mkdir -p /home/notebooks
WORKDIR /home/notebooks
   
RUN pip install \
    osmnx \
    glob2 \
    matplotlib \
    requests \
    typing \
    scikit-learn \
    keras \
    seaborn \
    scikit-metrics \
    jupyter \
    notebook

EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]