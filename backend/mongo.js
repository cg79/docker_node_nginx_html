const MongoClient = require('mongodb').MongoClient;
const MONGO_URL = "mongodb://mongo:27017/polyglot_ninja";


module.exports = function (app) {
    MongoClient.connect(MONGO_URL,(err,database) =>{
    if (err) return console.log(err);
  console.log("conected to mongo db with native driver");
    const db = database.db('onlinecoding')
    app.db  = db;
    app.people = db.collection("people");
    //console.log("OKKKKKKKKKKKKKKKK");
  })

};