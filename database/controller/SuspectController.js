const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');
const BaseController = require('./BaseController');

const logger = new Logger();
const requestHandler = new RequestHandler(logger)

class Suspect extends BaseController {

    static async getDisease(req, res) {
        try {
            const result = await super.getDisease(req, 'causes', 'symptoms');
            return requestHandler.sendSuccess(res, 'Common symptoms data is extracted')({ result })
        } catch (error) {
            return requestHandler.sendError(req, res, error)
        }
    }

}

module.exports = Suspect