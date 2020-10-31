const express = require('express');
const router = express.Router();
const db = require('../../database/controller/bodyParts/anatomy.js');

router.get('/',(req,res)=>{
    db.getMainParts((err,result)=>{
        if(err){
            console.log(err)
        }else{
            console.log(result)
            res.status(200).json(result)
        }
    })
})

module.exports = router;