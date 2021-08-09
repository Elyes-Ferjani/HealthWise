'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('bodypart', {
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
    })
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('causes');
  }
};
