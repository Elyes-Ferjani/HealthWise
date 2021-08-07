const router = require('express').Router();
const SuspectController = require('../../../database/controller/SuspectController');

router.get('/disease_symptoms/:causeId',(req,res)=>{SuspectController.getDisease(req,res)})

module.exports = router;