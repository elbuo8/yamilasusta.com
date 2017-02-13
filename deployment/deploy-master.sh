npm i -g now json
now deploy -t $ZEIT_TOKEN -e NODE_ENV=production --docker
DEPLOYMENT_INFO=$(curl -H "Authorization: Bearer $ZEIT_TOKEN" https://api.zeit.co/now/deployments | json -c "console.log(JSON.stringify(this.deployments.filter((e) => {return e.name === '$CIRCLE_PROJECT_REPONAME'}).reduce((a, b) => {return a.created > b.created ? a : b})))")
echo "running simple check"
curl -i -L $(echo $DEPLOYMENT_INFO | json url)
now alias $(echo $DEPLOYMENT_INFO | json uid) www.yamilasusta.com -t $ZEIT_TOKEN
