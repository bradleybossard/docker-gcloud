echo "Run these two commands"
echo
echo "exec -l $SHELL"
echo "gcloud init"
echo 
echo "This will put you in an authentication handshake. Copy the link it provides you into an incognito browser tabs where you sign in under the Google Account where you have VMs active."
echo
echo "Next, set some config variables for the Google Cloud CLI tool. This isn't required, I just like to do it this way."
echo
echo "gcloud config set project <project-name>"
echo "gcloud config set compute/zone <zone-name>"
echo
echo
echo "gcloud compute ssh <machine-name>"
