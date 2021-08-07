const router = require('express').Router();
const CausesController = require('../../../database/controller/CausesController');

router.get('/diseases/:bodyparId',(req,res)=>{CausesController.getCauses(req,res)})

module.exports = router;