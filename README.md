# docker-gcloud
Ubuntu box with Google Cloud Compute API installed.  I use this for getting SSH keys
so I can use them in a shell of my choice.

## Usage

    docker run -it --rm bradleybossard/docker-gcloud
    exec -l $SHELL
    gcloud init

This will put you in an authentication handshake.  Copy the link it provides you into an
incognito browser tabs where you sign in under the Google Account where you have VMs active.

Next, set some config variables for the Google Cloud CLI tool.  This isn't required, I just
like to do it this way.

    gcloud config set project <project-name>
    gcloud config set compute/zone <zone-name>

Next, ssh into the machine using the GCE CLI

    gcloud compute ssh <machine-name>

This generates the ssh keys.  Disconnect from the machine and your .ssh keys will be now
be located in the ~/.ssh directory as google_compute_engine and google_compute_engine.pub
