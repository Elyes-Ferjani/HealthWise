const DataTypes = require('sequelize/lib/data-types')
const Symptoms = require('./symptoms')
module.exports = (sequelize) => {
    const commonsymptoms = sequelize.define('commonsymptoms', {
        sympt_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            foreignKey: true,
        },
        bdpart_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            foreignKey: true,
        }
    },{
        // classMethods:{associate: (model) => {commonsymptoms.belongsTo(model.Symptoms, { foreignKey: sympt_id})}},
        tableName: 'commonsymptoms',
        timestamps: false
    })

    return commonsymptoms;
}