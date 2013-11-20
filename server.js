var http = require('http');
var fs = require('fs');
var index = fs.readFileSync(__dirname + '/index.html').toString();

http.createServer(function (req, res) {
  res.write(index);
}).listen(process.env.PORT || '3000');

console.log('Server running on', process.env.PORT || 3000);
