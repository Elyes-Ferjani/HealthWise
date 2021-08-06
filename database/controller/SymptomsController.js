const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');
const BaseController = require('./BaseController');

const logger = new Logger();
const requestHandler = new RequestHandler(logger)

class CommonSymptoms extends BaseController {

    static async getSymptoms(req, res) {
        try {
            const result = await super.getSymptoms(req, 'bodypart', 'symptoms');
            return requestHandler.sendSuccess(res, 'Common symptoms data is extracted')({ result })
        } catch (error) {
            return requestHandler.sendError(req, res, error)
        }
    }

}

module.exports = CommonSymptoms