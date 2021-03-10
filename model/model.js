const Sequelize = require("sequelize");
const sequelize = require('../db');

const Task = sequelize.define("todos", {
        id: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            allowNull: false
        },
        userid: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        title: {
            type: Sequelize.STRING,
            allowNull: false
        },
        completed: {
            type: Sequelize.BOOLEAN,
            allowNull: false
        }
    },
    {
        timestamps: false
    }
);

module.exports = Task;