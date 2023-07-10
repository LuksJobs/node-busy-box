var express = require('express');
var app = express();

// Add this to the very top of the first file loaded in your app
var apm = require('elastic-apm-node').start({
  serviceName: 'node-busybox',
  secretToken: 'un1med_elk_apm',
  serverUrl: 'http://10.10.33.30:8200',
  environment: 'ambiente dev'
})

app.get('/', function (req, res) {
  res.send('For the Alliance! Gaingue');
});

var port = process.env.PORT || 3000;
app.listen(port, function () {
  console.log('aplicação rodando na porta: ' + port);
});