PATH="$PATH:/usr/local/bin"
APP_REPO_NAME="yasco-repo/petclinic-app-dev" # Repo ismi kucuk olmak zorun da, yoksa hata alirsin
AWS_REGION="eu-west-2"

aws ecr create-repository \
  --repository-name ${APP_REPO_NAME} \
  --image-scanning-configuration scanOnPush=false \ 
  --image-tag-mutability MUTABLE \  # uzerine yazilabilir diyoruz
  --region ${AWS_REGION}