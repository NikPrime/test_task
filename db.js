const Sequelize = require("sequelize");

const sequelize = new Sequelize("node_postgres", "postgres", "admin", {
    dialect: "postgres",
    host: "localhost"
});

module.exports = sequelize;