const Pool = require('pg').Pool;
const credentials = {
    user: "postgres",
    password: "admin",
    host: "localhost",
    port: 5432,
    database: "node_postgres"
}

const pool = new Pool(credentials);
module.exports = pool;