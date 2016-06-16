function instructions {
  printf "To initial Google Cloud cli tool, run\n\n"
  printf "  gcloud init\n\n"
  printf "Follow authentication handshake instructions.\n"
  printf "Copy the link into incognito browser signed in under the Google Cloud Account.\n"
  printf "After handshaking, run this command to ssh into specific machine and install ssh keys.\n\n"
  printf "  gcloud compute ssh <machine-name>\n\n"
  printf "Once the keys are installed, run 'zipkeys' from the ~/.ssh to rename and zip the ssh keys.\n\n"
  printf "To view these instructions again, type 'instructions'\n\n"
}

instructions

function zipkeys {
 if [ -z $1 ]; then echo "Usage: zipkeys <newkeyname>"; return; fi;
 mv  google_compute_engine $1;
 mv google_compute_engine.pub $1.pub; 
 zip -e $1.zip $1*
}
