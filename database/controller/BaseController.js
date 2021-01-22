const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');

const logger = new Logger();
const errorHandler = new RequestHandler(logger);

class BaseController{
    constructor(options){
        this.limit = 20;
        this.options = options
    }

    static async getBody(req,modelName){
        let result;
        try{
            result = await req.app.get('db')[modelName].findAll().then(
                errorHandler.throwIf(r=> !r, 400, 'not found', 'Resource not found'),
                errorHadnler.throwError(500, 'sequelize error ,some thing wrong with either the data base connection or schema')
            )
        } catch (error){
            return Promise.reject(error)
        }
        return result
    }
}