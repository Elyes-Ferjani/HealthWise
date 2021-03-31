const DataTypes = require('sequelize/lib/data-types')

module.exports = (sequelize) => {
    const symptoms = sequelize.define('symptoms', {
        id: {
            type: DataTypes.INTEGER(11),
            primaryKey: true,
            allowNull: false,
        },
        symptom: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    },{
        tableName: 'symptoms',
        timestamps: false
    })
    return symptoms;
}