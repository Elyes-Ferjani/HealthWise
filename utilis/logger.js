const { createLogger, format, transports, exitOnError } = require('winston');
const fs = require('fs');
const dailyRotate = require('winston-daily-rotate-file');
const config = require('../config/appConfig');
const { env } = config.app;

const dir = 'log';


// creating Logger Class

class Logger {

    constructor() {
        !fs.existsSync(dir) ? fs.mkdirSync(dir) : null;
    }

    // logger for info level
    infoLogger = createLogger({
        // level: dev === 'developement' ? 'info' : 'debug',
        transports :[new transports.Console({
            level: 'info',
            format: format.combine(format.timestamp(), format.json())
        }),

        new (dailyRotate)({
            filename: `${dir}/${dir}%DATE%-info-result.log`,
            datePattern: `YYYY-MM-DD`
        })

        ],

        exitOnError: false
    });

    // logger for error level
    errorLogger = createLogger({

        transports :[new transports.Console({
            level: 'error',
            format: format.combine(format.timestamp(), format.json())
        }),

        new (dailyRotate)({
            filename: `${dir}/${dir}%DATE%-error-result.log`,
            datePattern: `YYYY-MM-DD`
        })

        ],

        exitOnError: false
    });

    // logger for warnings level
    warnLogger = createLogger({

        transports :[new transports.Console({
            level: 'warn',
            format: format.combine(format.timestamp(), format.json())
        }),

        new (dailyRotate)({
            filename: `${dir}/${dir}%DATE%-warn-result.log`,
            datePattern: `YYYY-MM-DD`
        })

        ],

        exitOnError: false
    });
    
};

module.exports = Logger