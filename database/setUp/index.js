const Sequelize = require('sequelize');
const env = process.env.NODE_ENV || 'development';
const config = require(`${__dirname}/../../config/config.json`)[env];
const fs = require('fs');
const path = require('path');
const basename = path.basename(__filename);

let sequelize;
let db = {};

if(config.use_env_variable){
  sequelize = new Sequelize(process.env[config.use_env_variable], config)
}else{
  sequlize = new Sequelize(config.database, config.username, config.password, config, {
    omitNull: true,
  })
};

// fs.readdirSync(`${__dirname}/../models`)
// .filter(file=> (file.indexOf('.') !== 0) && (file !== basename) && (file.slice(-3) === '.js'))
// .forEach(file=>{
//   const model = sequelize.import(path.join(__dirname,file))
//   db[model.name] = file
// });

Object.keys(db).forEach(modelName=>{
  if(db[modelName].associate){
    db[modelName].associate(db)
  }
});

db.sequlize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;