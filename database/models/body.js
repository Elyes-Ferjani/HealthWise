module.exports = (sequelize, DataTypes) => {
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
    }, {})

    return body;
}