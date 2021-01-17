const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const uuid = require('uuid');
const compression = require('conpression');
const db = require('../database/setUp/index')
const helmet = require('helmet');

// initiate a server connection
const app = express();

// server setups
app.set('config',config);
app.set('port',process.env.DEV-APP-PORT);
app.set('db',db);

// protection middleware
app.use(helmet());

// middlewares
app.use(require('method-overide')())
app.use(cors());
app.use(bodyParser.json());
app.use(compression());


// routers
app.use(require('./router'))