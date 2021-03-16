const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const uuid = require('uuid').v4;
const compression = require('compression');
const db = require('../database/setUp/index');
const config = require('../config/appConfig');
const helmet = require('helmet');
const Logger = require('../utilis/logger');
const logger = new Logger()

// initiate a server connection
const app = express();

// server setups
app.set('config',config);
// app.set('port',process.env.DEV-APP-PORT);
app.set('db',db);

// protection middleware
app.use(helmet());

// middlewares
app.use(require('method-override')())
app.use(cors());
app.use(bodyParser.json());
app.use(compression());

// req identifier log
app.use((req, res, next) => {
	req.identifier = uuid();
	const logString = `a request has been made with the following uuid [${req.identifier}] ${req.url} ${req.headers['user-agent']} ${JSON.stringify(req.body)}`;
	logger.infoLogger.log({level: 'info', message: logString});
	next();
});
// routers
app.use(require('./router/index'))

module.exports= app