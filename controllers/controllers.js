'use strict'

var path = require('path');
var mysql = require('mysql');

var dataconection = {
    host: "localhost",
    user: "root",
    password: "fermodyl5"
}

var controllers = {
    returnhtml:(req,res)=>{
        return res.status(200).sendFile(path.resolve(__dirname,'../public/views/index.html'));
    },
    uploadfiledata:(req,res)=>{
        var query = "INSERT INTO aumenta.files_data (filename,filetype,url,upload_id) ";
        query += " VALUES('"+req.body.filename+"','"+req.body.type[1]+"','"+req.body.url+"','"+req.body.uploadId+"')"
        var con = mysql.createConnection(dataconection);
        con.connect(function(err) {
            if (err) throw err;
            con.query(query, function (err, result) {
                if (err){
                    res.status(200).send({
                        message:"HUBO UN ERROR EN LA BASE DE DATOS"
                    });
                }else{
                    res.status(200).send({
                        message:"REGISTRO SUBIDO A LA BASE DE DATOS"
                    });
                }
            });
        });
    },
    getfilesdata:(req,res)=>{
        var con = mysql.createConnection(dataconection);
        con.connect(function(err) {
            if (err) throw err;
            con.query("SELECT * FROM aumenta.files_data", function (err, result) {
                if (err){
                    res.status(200).send({
                        message:"HUBO UN ERROR EN LA BASE DE DATOS"
                    })
                }else{
                    return res.status(200).send(JSON.stringify(result));
                }
            });
        });
    }
}

module.exports = controllers;