const arrayData = require('../data');

class TodoController {
    async getTasks(req, res) {
        const {valueFromInput, isCheckboxCheck} = req.body;
        let newArrayData = [];

        if (valueFromInput.length > 0) {
            arrayData.forEach(elem => {
                if(((isCheckboxCheck && elem.completed === false) || !isCheckboxCheck) && elem.title.indexOf(valueFromInput, 0) >= 0) {
                    newArrayData.push(elem);
                }
            })
        }
        res.render('main', {tasks: newArrayData, valueFromInput, isCheckboxCheck});
    };
}

module.exports = new TodoController();