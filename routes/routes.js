'use-strict'

var express = require("express");
var controllers = require("../controllers/controllers");
var routes = express.Router();

routes.get("/gethtmlpage",controllers.returnhtml);
routes.post("/uploadfiledata",controllers.uploadfiledata);
routes.get("/getfilesdata",controllers.getfilesdata);

module.exports = routes;