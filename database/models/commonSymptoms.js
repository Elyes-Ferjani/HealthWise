const DataTypes = require('sequelize/lib/data-types')

module.exports = (sequelize) => {
    const commonsymptoms = sequelize.define('commonsymptoms', {
        sympt_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            references: {
                model: 'symptoms',
                key: 'id'
              }
        },
        bdpart_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            references: {
                model: 'bodyPart',
                key: 'id'
              }
        }
    },{
        tableName: 'commonsymptoms',
        timestamps: false
    })
    
    commonsymptoms.associate = models =>{
        commonsymptoms.belongsTo(models.symptoms, {foreignKey: 'sympt_id'})
        commonsymptoms.belongsTo(models.bodypart, {foreignKey: 'bdpart_id'})
    }

    return commonsymptoms;
}