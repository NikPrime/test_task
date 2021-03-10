const db = require('../db');

class TodoController {
    async getTasks(req, res) {
        const {inputvalue, isCheck} = req.body;
        let tasks = isCheck ? await db.query(`SELECT id, title, completed FROM todos WHERE (strpos(title, '${inputvalue}') > 0 AND completed = false) `):
                await db.query(`SELECT id, title, completed FROM todos WHERE strpos(title, '${inputvalue}') > 0`)
        if(tasks && tasks.length > 0)
        res.render('main', {tasks: tasks[0], inputValue: inputvalue, isCheck: isCheck});
    };
}

module.exports = new TodoController();