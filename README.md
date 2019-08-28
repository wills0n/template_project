# template_project

Deploy GCP instance reddit-app:
gcloud compute --project=week3-249609 instances create reddit-app --boot-disk-size=10GB image=ubuntu-1804-bionic-v20190813a --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --zone=europe-north1-a  
