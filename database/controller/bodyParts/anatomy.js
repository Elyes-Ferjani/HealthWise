const db = require("../../config/config");
const mysql = require('mysql')

// pull all main body parts from Database:

const getMainParts = (callback) => {
  let syntax = ` SELECT * FROM body `;
  db.connection.query(syntax, (err, result) => {
    if (err) {
      callback(err,null);
    } else {
      callback(null,result);
    }
  });
};


module.exports.getMainParts = getMainParts