'use-strict'

//CARGAR MODULOS PARA SERVIDOR
var express = require("express");
var bodyparser = require("body-parser");
var path = require("path");

//EJECUTAR EXPRESS
var app = express();

//MIDDLEWARES
app.use(bodyparser.urlencoded({extended:false}));
app.use(bodyparser.json());

//CONFIGURAR CORS
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});

//ROUTES
var routes = require("./routes/routes");
app.use('/',routes);
/*app.get('/ejemplo', function(req, res) {
    res.send('hello world');
  });*/

app.use(express.static(path.join(__dirname,"public")))

//EXPORTAR MODULOS
module.exports = app;