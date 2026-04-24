const http = require('http');
const fs = require('fs');

http.createServer((req, res) => {
  fs.readFile('README.md', 'utf8', (err, data) => {
    res.writeHead(err ? 500 : 200, { 'Content-Type': 'text/plain' });
    res.end(err ? 'Error reading README' : data);
  });
}).listen(3000, '0.0.0.0', () => console.log('Listening on http://0.0.0.0:3000'));
