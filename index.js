const prompt = require('prompt-sync')({sigint: true});
const db = require('./local_modules/db-connect.js');

//----------------TESTING----------------------------------
// const backslashD = `SELECT n.nspname as "Schema",
// c.relname as "Name",
// CASE c.relkind WHEN 'r' THEN 'table' WHEN 'v' THEN 'view' WHEN 'm' THEN 'materialized view' WHEN 'i' THEN 'index' WHEN 'S' THEN 'sequence' WHEN 't' THEN 'TOAST table' WHEN 'f' THEN 'foreign table' WHEN 'p' THEN 'partitioned table' WHEN 'I' THEN 'partitioned index' END as "Type",
// pg_catalog.pg_get_userbyid(c.relowner) as "Owner"
// FROM pg_catalog.pg_class c
//    LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
//    LEFT JOIN pg_catalog.pg_am am ON am.oid = c.relam
// WHERE c.relkind IN ('r','p','v','m','S','f','')
//     AND n.nspname <> 'pg_catalog'
//     AND n.nspname !~ '^pg_toast'
//     AND n.nspname <> 'information_schema'
// AND pg_catalog.pg_table_is_visible(c.oid)
// ORDER BY 1,2;`;

// const db = new pg.Client({
//     user: db_values.user,
//     host: db_values.host,
//     database: db_values.database,
//     password: db_values.password,
//     port: db_values.port
// });

// db.connect();

// const show_query = backslashD;

// db.query(show_query, (err, res) => {
//     if (err) {
//       // console.log(show_query);
//       console.error("Error executing query", err.stack);
//     } else {
//       console.log(res.rows);
//     }
//     db.end();
// });
//----------------TESTING----------------------------------

//main



var choice = Number(prompt(`Enter 1 for "Listing top artists of all time"\n
                     Enter 2 to see number of listeners of a particular artist\n
                     Enter 3 for seeing top artists, genre-wise\n
                     Enter 4 to login\n`));
switch (choice) {
  case 1:
    let count = Number(prompt("How many top artists do you want to see?"));
    db.query(`Top_artists(${count});`, (err, res) => {
      if (err) {
        console.error("Error executing query", err.stack);
      } else {
        console.log(res.rows);
      }
    });
    break;
  
  case 2:
    let artist = prompt("Enter name of artist: ");
    db.query(`Artist_count(${artist});`, (err, res) => {
      if (err) {
        console.error("Error executing query", err.stack);
      } else {
        console.log(res.rows);
      }
    });
    break;
  
  case 3:
    db.query(`Top_artists_genre();`, (err, res) => {
      if (err) {
        console.error("Error executing query", err.stack);
      } else {
        console.log(res.rows);
      }
    });
    break;
  
  case 4:
    let username = prompt("Enter user name: ");
    let pswd = prompt("Enter password: ");
    break;

  default:
    console.log("Enter correct choice!");
    break;
}


