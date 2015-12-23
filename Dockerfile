FROM bradleybossard/docker-common-devbox
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-gcloud .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-gcloud

#ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1

# Add a yeoman user because grunt doesn't like being root
RUN adduser --disabled-password --gecos "" bradleybossard && \
  echo "bradleybossard ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER bradleybossard

ENV HOME /home/bradleybossard

WORKDIR /home/bradleybossard

ADD welcome.sh welcome.sh
RUN cat welcome.sh >> .bashrc
RUN rm welcome.sh

RUN curl https://sdk.cloud.google.com | bash
