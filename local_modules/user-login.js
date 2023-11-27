const db = require('./db-connect.js');

function authenticateUser(username, pass) {
    db.query(`Authenticate_user(${username}, ${pass});`, (err, res) => {
        if (err) {
            console.error("Error executing query", err.stack);
            return -1;
        } else {
            if (res != 1) {
                console.log("Authentication failed.\n");
                return 0;
            } else {
                console.log("Authenticated!\n");
                return 1;
            }
        }
    });
}

function registerUser(username, pass) {
    db.query(`Register_user(${username}, ${pass});`, (err, res) => {
        if (err) {
            console.error("Error executing query", err.stack);
            return -1;
        } else {
            if (res != 1) {
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