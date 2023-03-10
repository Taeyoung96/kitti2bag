FROM ros:lunar-ros-base

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    ros-lunar-cv-bridge \
    ros-lunar-opencv3 \
    ros-lunar-tf \
    python-pip python-matplotlib curl \
  && rm -rf /var/lib/apt/lists/*

# https://heum-story.tistory.com/214
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python get-pip.py && pip install --upgrade pip==20.3.4
RUN pip install --upgrade numpy

COPY . /kitti2bag

RUN pip install -e /kitti2bag

WORKDIR /data

ENTRYPOINT ["/kitti2bag/docker_entrypoint.sh"]

