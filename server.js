const http = require('http');
const app = require('./app');

http.createServer(app).listen(process.env.PORT);

console.log('Server running on', process.env.PORT || 3000);
