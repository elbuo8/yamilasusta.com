npm i -g now@4.7.0
URL=$(now deploy -t $ZEIT_TOKEN -e NODE_ENV=production --docker)
echo "running simple check on $URL"
curl --silent -i -L $URL
now alias set $URL www.yamilasusta.com -t $ZEIT_TOKEN
