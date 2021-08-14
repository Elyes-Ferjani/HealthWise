require('dotenv').config();

module.exports = {
	app: {
		port: process.env.DEV_APP_PORT || 3000,
		appName: process.env.APP_NAME || 'healthwise',
		env: process.env.NODE_ENV || 'development',
	},
	db: {
		port: process.env.DB_PORT || 3306,
		database: process.env.DB_NAME || 'sql11430907' || 'hezlthwise',
		password: process.env.DB_PASS || 'ryQ7dZnARx' ||'123',
		username: process.env.DB_USER || 'sql11430907' || 'root',
		host: process.env.DB_HOST || 'sql11.freesqldatabase.com' ||'127.0.0.1',
		dialect: 'mysql',
		logging: true,
	},
	winiston: {
		logpath: '/healthwise/logs/',
	},
	auth: {
		jwt_secret: process.env.JWT_SECRET,
		jwt_expiresin: process.env.JWT_EXPIRES_IN || '1d',
		saltRounds: process.env.SALT_ROUND || 10,
		refresh_token_secret: process.env.REFRESH_TOKEN_SECRET || 'VmyZnVsbFNlY3JldAVyeVBvd2V==',
		refresh_token_expiresin: process.env.REFRESH_TOKEN_EXPIRES_IN || '2d',
	},
	sendgrid: {
		api_key: process.env.SEND_GRID_API_KEY,
		api_user: process.env.USERNAME,
		from_email: process.env.FROM_EMAIL || 'officialef@hotmail.com',
	},

};