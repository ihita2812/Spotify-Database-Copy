const pg = require('pg');
const db_values = require('./db-config.js');

async function authenticateUser(username, pass) {
    var db = new pg.Client({
        user: db_values.user,
        host: db_values.host,
        database: db_values.database,
        password: db_values.password,
        port: db_values.port
    });
    
    await db.connect();
    
    db.query(`SELECT * FROM authenticate_user('${username}', '${pass}');`, (err, res) => {
        if (err) {
            console.error("Error executing query", err.stack);
            return -1;
        } else {
            if (res.rows.authenticate_user == 0) {
                console.log("Authentication failed.\n");
                db.end();
                return 0;
            } else {
                console.log("Authenticated!\n");
                db.end();
                return 1;
            }
        }
    });
}

async function registerUser(username, pass) {
    var db = new pg.Client({
        user: db_values.user,
        host: db_values.host,
        database: db_values.database,
        password: db_values.password,
        port: db_values.port
    });
    
    await db.connect();
    // console.log(db);
    db.query(`SELECT * FROM Register_user('${username}', '${pass}');`, (err, res) => {
        if (err) {
            console.error("Error executing query", err.stack);
            return -1;
        } else {
            db.end();
            if (res.rows.register_user == 0) {
                console.log("Registration failed.\n");
                return 0;
            } else {
                console.log("Registered!\n");
                return 1;
            }
        }
    });
}

function userOptions() {
    console.log(`
        Press 1 to see your top genre.\n
        Press 2 to see your top artists.\n
        Press 3 to see your top songs.\n
        Press 4 to see albums recommended for you.\n
        Press 5 to listen to a song.\n
        Press 6 to log out.\n`
    );
}

var user = {
    authenticate: authenticateUser,
    register: registerUser,
    options: userOptions
};

module.exports = user;