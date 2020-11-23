# Get access to environment variables
set -a && . ~/.hocus-mount/user/.env && set +a

git clone https://github.com/gmboyer/AdventureGen.git

git checkout origin chris_working

pip3 install -r requirements.txt