const express = require('express');
const app = express();
const path = require('path');
const todoRouter = require('./routes/todo.router');
const PORT = 3000;

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
app.use(express.urlencoded({extended: false}))
app.use(express.static(path.join(__dirname, 'public')));
app.use('/', todoRouter)

let server = app.listen(PORT, () => {
    console.log(`Example app listening at http://localhost:${PORT}`)
})