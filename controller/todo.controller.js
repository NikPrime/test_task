const arrayData = require('../data');

class TodoController {
    async getTasks(req, res) {
        const {valueFromInput} = req.body;
        let {isCheckboxCheck} = req.body;

        let newArrayData = [];
            arrayData.forEach(elem => {
                if(((isCheckboxCheck && elem.completed === false) || !isCheckboxCheck) && (!valueFromInput || valueFromInput.length === 0 || elem.title.indexOf(valueFromInput, 0) >= 0)) {
                    newArrayData.push(elem);
                }
            })
        if(!valueFromInput) {
            isCheckboxCheck = true;
        }
        res.json({newArrayData, isCheckboxCheck})
    };
}

module.exports = new TodoController();