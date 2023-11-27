const pg = require('pg');
const db_values = require('./local_modules/db-config.js');

const db = new pg.Client({
    user: db_values.user,
    host: db_values.host,
    database: db_values.database,
    password: db_values.password,
    port: db_values.port
});

db.connect();

module.exports = db;