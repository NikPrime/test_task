const Router = require('express');
const router = new Router();
const todoController = require('../controller/todo.controller');
const request = require('request')

router.get('/', (req, res) => {
    res.render('main');
    var fullUrl = req.protocol + '://' + req.get('host') + req.originalUrl;
    request.post(fullUrl);
})
router.post('/', todoController.getTasks);
module.exports = router;