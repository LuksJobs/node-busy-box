var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('By three they come. By three, thy way opens. By the blood of the willing, we call thee home. Hail, Daughter of Hatred. Creator of Sanctuary. Hail...Lilith. ლ,ᔑ•ﺪ͟͠•ᔐ.ლ');
});

var port = process.env.PORT || 3000;
app.listen(port, function () {
  console.log('aplicação rodando na porta: ' + port);
});