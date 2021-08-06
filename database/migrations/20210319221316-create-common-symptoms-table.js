'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('commonsymptoms', {
      sympt_id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        pimaryKey: true,
        references: {
          model: 'symptoms',
          key: 'id'
        }
      },
      bdpart_id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        primarKey: true,
        references: {
          model: 'bodypart',
          key: 'id'
        }
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
