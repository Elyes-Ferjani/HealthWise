const http = require('http');
const app = require('../server/index');
const Logger = require('../utilis/logger');

const logger = new Logger()

// creating http server

const server = http.createServer(app)

// normalize the port
function normalizePort(val) {
	const port = parseInt(val, 10);

	if (Number.isNaN(port)) {
		// named pipe
		return val;
	}

	if (port >= 0) {
		// port number
		return port;
	}

	return false;
}

// Get port from environment and store in Express.
const port = normalizePort(process.env.PORT || process.env.DEV_APP_PORT || '3000');
app.set('port', port);

function onError(error) {
	if (error.syscall !== 'listen') {
		throw error;
	}

	const bind = typeof port === 'string'
		? `Pipe ${port}`
		: `Port ${port}`;

	// handle specific listen errors with friendly messages
	switch (error.code) {
	case 'EACCES':
		console.log(`${bind} requires elevated privileges`);
		process.exit(1);
		//return;
	case 'EADDRINUSE':
		console.log(`${bind} is already in use`);
		process.exit(1);
		//return;
	default:
		throw error;
	}
}

// Event listener for HTTP server "listening" event.
function onListening() {
	const addr = server.address();
	const bind = typeof addr === 'string'
		? `pipe ${addr}`
		: `port ${addr.port}`;

	console.log(`the server started listining on port ${bind}`, 'info');
}

// Listen on provided port, on all network interfaces.
server.listen(port);
server.on('error', onError);
server.on('listening', onListening);