FROM jodogne/orthanc-plugins:1.12.7
RUN apt-get update && apt-get install -y python3.11 python3.11-venv python3-pip libgl1 libglib2.0-0 ffmpeg libsm6 libxext6
RUN apt-get install -y git && git clone https://github.com/StJuan1210/fracturedetect /etc/orthanc/fracturedetect
RUN python3.11 -m venv /etc/orthanc/fracturedetect/venv
RUN /etc/orthanc/fracturedetect/venv/bin/pip install -r /etc/orthanc/fracturedetect/requirements.txt
COPY fix_model_path.sh /etc/orthanc/fracturedetect/fix_model_path.sh
RUN chmod +x /etc/orthanc/fracturedetect/fix_model_path.sh && /etc/orthanc/fracturedetect/fix_model_path.sh
RUN cd /etc/orthanc/fracturedetect && git pull