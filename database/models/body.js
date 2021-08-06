const DataTypes = require('sequelize/lib/data-types')

module.exports = (sequelize) => {
    const body = sequelize.define('body', {
        id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
        },
        part: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    },{
        tableName: 'body',
        timestamps: false
    });

    body.associate = models =>{
        body.hasMany(models.bodypart,{
            foreignKey: 'body_id'
        })
    }
    return body;
}