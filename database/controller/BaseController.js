const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');
const { sequelize } = require('../setUp');
const symptoms = require('../models/symptoms')(sequelize);
const Body = require('../models/body')(sequelize)
const commonSymptoms = require('../models/commonSymptoms')(sequelize)
const bodyPart = require('../models/bodyPart')(sequelize)
const causes = require('../models/causes')(sequelize)

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
        const id = req.params.partId;
        const filter = +id ? { id } : { part: id}
        try {
            result = await req.app.get('db')[modelName].findAll({ include: [{ model : bodyPart }], where: filter }).catch(() => {
                errorHandler.throwIf(r => !r, 400, 'not found', 'Resource not found'),
                    errorHandler.throwError(500, 'sequelize error, some thing wrong with either the database connection or schema')
            })
        } catch (error) {
            return Promise.reject(error)
        }
        return result
    }

    static async getSymptoms(req, modelName, Model) {
        let result;
        const id = req.params.organId;
        const filter = +id ? { id } : { organ: id }
        try {

            result = await req.app.get('db')[modelName].findAll({ include: [{ model: symptoms }], where: filter }).catch(() => {
                errorHandler.throwIf(r => !r, 400, 'not found', 'Resource not found'),
                    errorHandler.throwError(500, 'sequelize error, some thing wrong with either the database connection or schema')
            })

        } catch (error) {
            return Promise.reject(error)
        }
        return result
    }

    static async getCauses(req, modelName) {
        let result;
        const id = req.params.bodyparId;
        const filter = +id ? { id } : { organ: id }
        try {
            result = await req.app.get('db')[modelName].findAll({ include: [{ model : causes }], where: filter }).catch(() => {
                errorHandler.throwIf(r => !r, 400, 'not found', 'Resource not found'),
                    errorHandler.throwError(500, 'sequelize error, some thing wrong with either the database connection or schema')
            })
        } catch (error) {
            return Promise.reject(error)
        }
        return result
    }

    static async getDisease(req, modelName, Model) {
        let result;
        const id = req.params.causeId;
        const filter = +id ? { id } : { illness: id }
        try {

            result = await req.app.get('db')[modelName].findAll({ include: [{ model: symptoms }], where: filter }).catch(() => {
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