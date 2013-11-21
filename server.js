var express = require('express');
var app = express();

app.get('/*', function (req, res) {
  res.sendfile(__dirname + '/public/index.html');
});

app.listen(process.env.PORT || 3000);

console.log('Server running on', process.env.PORT || 3000);
