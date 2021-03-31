'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('symptoms', {
      id: {
        type: Sequelize.INTEGER(11),
        primaryKey: true,
        allowNull: false,
      },
      symptom: {
        type: Sequelize.STRING,
        allowNull: false,
      }
    }
    )
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('symtpoms')
  }
};
