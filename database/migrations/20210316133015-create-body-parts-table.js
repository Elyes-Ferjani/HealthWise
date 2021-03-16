'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('bodypart', {
      id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
      },
      organs: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      body_id: {
        type: DataTypes.INTEGER(11),
        allowNull: false,
        foreignKey: true
    }
    })
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('bodypart');
  }
};
