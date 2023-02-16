var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('For the Alliance!');
});

var port = process.env.PORT || 3000;
app.listen(port, function () {
  console.log('aplicação rodando na porta: ' + port);
});