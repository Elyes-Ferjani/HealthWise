const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');
const { sequelize } = require('../setUp');
const Body = require('../models/body')(sequelize)

const logger = new Logger();
const errorHandler = new RequestHandler(logger);

class BaseController {
    constructor(options) {
        this.limit = 20;
        this.options = options
    }

    static async getBody(req, modelName) {
        let result;
        try {
            result = await req.app.get('db')[modelName].findAll().catch(() => {
                errorHandler.throwIf(r => !r, 400, 'not found', 'Resource not found'),
                    errorHandler.throwError(500, 'sequelize error ,some thing wrong with either the database connection or schema')
            })
        } catch (error) {
            return Promise.reject(error)
        }
        return result
    }

    static async getBodyParts(req, modelName) {
        let result;
        const id = req.params.partId
        try {
            result = await req.app.get('db')[modelName].findAll({where: {body_id: id}}).catch(() => {
                errorHandler.throwIf(r => !r, 400, 'not found', 'Resource not found'),
                    errorHandler.throwError(500, 'sequelize error, some thing wrong with either the database connection or schema')
            })
        } catch (error) {
            return Promise.reject(error)
        }
        return result
    }
}

module.exports = BaseController