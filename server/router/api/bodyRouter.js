const router = require('express').Router();
const BodyController = require('../../../database/controller/BodyController');

router.get('/',(req,res)=>{BodyController.getBody(req,res)})

module.exports = router;