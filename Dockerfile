FROM tensorflow/tensorflow:latest-gpu-jupyter

WORKDIR /tf-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
