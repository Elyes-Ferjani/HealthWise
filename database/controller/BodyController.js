const _ = require('lodash');
const RequestHandler = require('../../utilis/RequestHandler');
const Logger = require('../../utilis/logger');
const BaseController = require('./BaseController');

const logger = new Logger();
const requestHandler = new RequestHandler(logger)

class BodyParts extends BaseController {

    static async getBody(req, res) {
        try {
            const result = await super.getBody(req, 'body');
            return requestHandler.sendSuccess(res, 'Main BodyPart Data Extracted')({ result })
        } catch (error) {
            return requestHandler.sendError(req, res, error)
        }
    }

    static async getBodyParts(req, res) {
        try {
            const result = await super.getBodyParts(req, 'bodypart');
            return requestHandler.sendSuccess(res, 'Internal BodyPart Data Extracted')({ result })
        } catch (error) {
            return requestHandler.sendError(req, res, error)
        }
    }
}

module.exports = BodyParts