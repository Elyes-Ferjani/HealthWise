const router = require('express').Router();

router.use('/body', require('./bodyRouter'))
router.use('/body', require('./bodyPartRouter'))

module.exports = router