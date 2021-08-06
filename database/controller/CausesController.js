const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');
const BaseController = require('./BaseController');

const logger = new Logger();
const requestHandler = new RequestHandler(logger)

class Causes extends BaseController {

    static async getCauses(req, res) {
        try {
            const result = await super.getCauses(req, 'bodypart');
            return requestHandler.sendSuccess(res, 'Internal BodyPart Data Extracted')({ result })
        } catch (error) {
            return requestHandler.sendError(req, res, error)
        }
    }
}

module.exports = Causes