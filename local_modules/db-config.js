require('dotenv').config();

const user = "postgres";
const host = "localhost";
const database = "Spotify_Database_CS301";
const password = process.env.DB_PASS;
const port = 5432;

const dbConfig = {
    user: user,
    host: host,
    database: database,
    password: password,
    port: port
};

module.exports = dbConfig