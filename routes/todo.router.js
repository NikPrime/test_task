const Router = require('express');
const router = new Router();
const todoController = require('../controller/todo.controller');

router.get('/', (req, res) => {
    res.render('main', {isCheckboxCheck: true});
})
router.post('/', todoController.getTasks);
module.exports = router;