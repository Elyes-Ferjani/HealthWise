const DataTypes = require('sequelize/lib/data-types')

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
    return bodypart;
}
