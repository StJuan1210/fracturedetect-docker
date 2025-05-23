## Docker implementation of my YOLO plugin

This is a doccker implementation of my plugin for Orthanc (available [here](https://github.com/StJuan1210/fracturedetect)). Creates a docker image with all the required libraries and files and exposes the orthanc port for use.

## Steps to run
1. Clone the repo and download [libOrthancDicomWeb.so](https://orthanc.uclouvain.be/downloads/linux-standard-base/orthanc-dicomweb/index.html) and [libOrthancPython.so](https://orthanc.uclouvain.be/downloads/linux-standard-base/orthanc-python/debian-bookworm-python-3.11/index.html) to the folder.
2. Build the docker image `docker build -t orthanc-plugin-python .`
3. Run the container with `docker compose up --build`    