# docker-gcloud
Ubuntu box with Google Cloud Compute API installed.  I use this for getting SSH keys
so I can use them in a shell of my choice.

## Usage

    docker run -it --rm -v $PWD:/src --name docker-gcloud bradleybossard/docker-gcloud

Upon startup, instructions are shown to initialize the GCE cli tool.  These instructions can
be view by typing

    instructions
