const DataTypes = require('sequelize/lib/data-types')

module.exports = (sequelize) => {
    const suspect = sequelize.define('suspect', {
        cause_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            references: {
                model: 'causes',
                key: 'id'
              }
        },
        symptom_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            references: {
                model: 'symptoms',
                key: 'id'
              }
        }
    },{
        tableName: 'suspect',
        timestamps: false
    })
    
    suspect.associate = models =>{
        suspect.belongsTo(models.symptoms, {foreignKey: 'symptom_id'})
        suspect.belongsTo(models.causes, {foreignKey: 'cause_id'})
    }

    return suspect;
}