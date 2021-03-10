const express = require('express');
const app = express();
const path = require('path');
const todoRouter = require('./routes/todo.router');
const sequelize = require('./db');
const Task = require('./model/model');
const data = require('./data');
const PORT = 3000;

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
app.use(express.urlencoded({extended: false}))
app.use(express.static(path.join(__dirname, 'public')));
app.use('/', todoRouter)

app.listen(PORT, () => {
    sequelize.sync().then(async function() {
        let isCreated = await sequelize.query(`SELECT CASE WHEN EXISTS (SELECT * FROM todos LIMIT 1) THEN 1 ELSE 0 END`);
        if(isCreated && isCreated[0] && isCreated[0][0].case === 0){
           data.forEach(elem => {
              Task.create( {
                  id: elem.id,
                  userid: elem.userId,
                  title: elem.title,
                  completed: elem.completed
              })
           });
       }
    });

    console.log(`Example app listening at http://localhost:${PORT}`)
})