'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('commonsymptoms', {
      sympt_id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        foreignKey: true,
      },
      bdpart_id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        foreignKey: true,
      }
    }, {
      tableName: 'commonsymptoms',
      timestamps: false
    })
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('commonsymptoms')
  }
};
