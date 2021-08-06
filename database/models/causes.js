const DataTypes = require('sequelize/lib/data-types')

module.exports = (sequelize) => {
    const causes = sequelize.define('causes', {
        id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
        },
        illness: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        bodyp_id: {
            type: DataTypes.INTEGER(11),
            allowNull: false,
            foreignKey: true
        }
    }, {
        tableName: 'causes',
        timestamps: false
    })

    causes.associate = models => {
        causes.belongsToMany(models.symptoms, {
            through: models.suspect,
            foreignKey: 'cause_id'
        })
    }

    return causes;
}
