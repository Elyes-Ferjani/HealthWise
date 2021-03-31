const router = require('express').Router();
const SymptomsController = require('../../../database/controller/SymptomsController');

router.get('/:organId',(req,res)=>{SymptomsController.getSymptoms(req,res)})

module.exports = router;