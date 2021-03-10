const Sequelize = require("sequelize");

const sequelize = new Sequelize("postgres", "postgres", "admin", {
    dialect: "postgres",
    host: "localhost"
});

module.exports = sequelize;