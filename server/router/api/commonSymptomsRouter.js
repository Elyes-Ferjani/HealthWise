const router = require('express').Router();
const SymptomsController = require('../../../database/controller/SymptomsController');

router.get('/symptoms/:organId',(req,res)=>{SymptomsController.getSymptoms(req,res)})

module.exports = router;