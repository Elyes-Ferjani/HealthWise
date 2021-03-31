const router = require('express').Router();

router.use('/body', require('./bodyRouter'))
router.use('/body', require('./bodyPartRouter'))
router.use('/body', require('./commonSymptomsRouter'))

module.exports = router