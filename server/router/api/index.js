const router = require('express').Router();

router.use('/body', require('./bodyRouter'))

module.export = router