const router = require('express').Router();
const BodyController = require('../../../database/controller/BodyController');

router.get('/organs/:partId',(req,res)=>{BodyController.getBodyParts(req,res)})

module.exports = router;