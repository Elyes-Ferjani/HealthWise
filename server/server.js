const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();
const port = 5000;

// importing the routes:

const body = require('./bodyParts/anatomy.js')
// const symptoms = require('./symptoms/symptoms.js')

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

// routes middlewares:

app.use('/body',body);
// app.use('./symptoms',symptoms)

// connecting to the server:

app.listen(port,console.log(`Node successfully connected & listening to ${port}`))