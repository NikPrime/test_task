const Router = require('express');
const router = new Router();
const todoController = require('../controller/todo.controller');

router.get('/', (req, res) => {
    res.render('main', {isCheck: true});
})
router.post('/', todoController.getTasks);
module.exports = router;