FROM tensorflow/tensorflow:2.15.0-gpu

RUN mkdir -p /home/notebooks
WORKDIR /home/notebooks
   
RUN pip install \
    osmnx \
    opencv-python \
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
