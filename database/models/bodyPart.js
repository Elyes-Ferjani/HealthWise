const DataTypes = require('sequelize/lib/data-types')
const body = require('./body')

module.exports = (sequelize) => {
    const bodypart = sequelize.define('bodypart', {
        id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
        },
        organ: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        body_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            foreignKey: true
        }
    },{
        tableName: 'bodypart',
        timestamps: false
    })
    // body.hasMany(bodyParts)
    // bodyParts.belongsTo(body)
    return bodypart;
}
