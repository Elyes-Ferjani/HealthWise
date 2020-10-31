const mysql = require("mysql");

// database connection:

const connection = mysql.createConnection({

  host: "localhost",
  user: "root",
  password: "root",
  database: "healthwise",
  insecureAuth: true,

});

// connect to database:

connection.connect((err) => {

    if (err) throw err;
    console.log("Database connected");
    
});

module.exports.connection = connection;