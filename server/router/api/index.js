const router = require('express').Router();

router.use('/body', require('./bodyRouter'))
router.use('/body', require('./bodyPartRouter'))
router.use('/body', require('./commonSymptomsRouter'))
router.use('/body', require('./causesRouter'))
router.use('/body', require('./suspectRouter'))

module.exports = router