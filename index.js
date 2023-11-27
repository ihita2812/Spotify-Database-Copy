const pg = require('pg');
const prompt = require('prompt-sync')({sigint: true});
const db_values = require('./local_modules/db-config.js');
const user = require('./local_modules/user-login.js');

// while (1) {
  var choice = Number(prompt(`Enter 1 for listing top artists of all time\nEnter 2 to see number of listeners of a particular artist\nEnter 3 for seeing top artists, genre-wise\nEnter 4 to login\nEnter 5 to register as a user\nEnter 6 to exit.\n`));
  if (choice == 6) {
    console.log("exiting database.\n");
    db.end();
    // break;
  }
  switch (choice) {
    case 1:
      var db = new pg.Client({
        user: db_values.user,
        host: db_values.host,
        database: db_values.database,
        password: db_values.password,
        port: db_values.port
      });
      
      db.connect();
      let count = Number(prompt("How many top artists do you want to see?"));
      db.query(`SELECT * FROM top_artists(${count});`, (err, res) => {
        console.log(`Top_artists(${count});`);
        if (err) {
          console.error("Error executing query", err.stack);
        } else {
          console.log(res.rows);
          db.end();
        }
      });
      break;
    
    case 2:
      var db = new pg.Client({
        user: db_values.user,
        host: db_values.host,
        database: db_values.database,
        password: db_values.password,
        port: db_values.port
      });
      
      db.connect();
      
      let artist = prompt("Enter name of artist: ");
      db.query(`SELECT * FROM Artist_count('${artist}');`, (err, res) => {
        if (err) {
          console.error("Error executing query", err.stack);
        } else {
          console.log(res.rows);
          db.end();
        }
      });
      break;
    
    case 3:
      var db = new pg.Client({
        user: db_values.user,
        host: db_values.host,
        database: db_values.database,
        password: db_values.password,
        port: db_values.port
      });
      
      db.connect();
      db.query(`SELECT * FROM Top_artists_genre();`, (err, res) => {
        if (err) {
          console.error("Error executing query", err.stack);
        } else {
          console.log(res.rows);
          db.end();
        }
      });
      break;
    
    case 4:
    {
      let username = prompt("Enter user name: ");
      let pswd = prompt("Enter password: ");
      let authSuccess = user.authenticate(username, pswd);
      if (authSuccess == -1) {
        console.log("Query error!\n");
        break;
      } else if (authSuccess == 0) {
        console.log("Authentication failed.\n");
        break;
      }
      // while (1) {    
        user.options();
        let choice2 = Number(prompt());
        if (choice2 == 6) {
          console.log("Logged out!\n");
          break;
        }
        switch (choice2) {
          case 1:
          {
            var db = new pg.Client({
              user: db_values.user,
              host: db_values.host,
              database: db_values.database,
              password: db_values.password,
              port: db_values.port
            });
            
            
            db.connect((err) => {
              if(err){
                  console.log(err)
              }
              console.log('MySql Connected...')
          });
            db.query(`SELECT * FROM User_top_genre('${username}');`, (err, res) => {
              if (err) {
                console.error("Error executing query", err.stack);
              } else {
                console.log(res.rows);
                db.end();
              }
            });
            break;
          }
          case 2:
          {
            db.query(`User_top_artists(${username});`, (err, res) => {
              if (err) {
                console.error("Error executing query", err.stack);
              } else {
                console.log(res.rows);
              }
            });
            break;
          }
          case 3:
          {
            db.query(`User_top_songs(${username});`, (err, res) => {
              if (err) {
                console.error("Error executing query", err.stack);
              } else {
                console.log(res.rows);
              }
            });
            break;
          }
          case 4:
          {
            db.query(`User_recommend(${username});`, (err, res) => {
              if (err) {
                console.error("Error executing query", err.stack);
              } else {
                console.log(res.rows);
              }
            });
            break;
          }
          case 5:
          {
            let choice3 = Number(prompt(`Enter 1 to listen with album no. and track no.\n
                                          Enter 2 to listen by song name\n`));
            switch (choice3) {
              case 1:
              {
                let albumid = Number(prompt("Enter album id: "));
                let trackno = Number(prompt("Enter track no.: "));
                db.query(`User_listen_id(${albumid}, ${trackno}, ${username});`, (err, res) => {
                  if (err) {
                    console.error("Error executing query", err.stack);
                  } else {
                    if (res == -1) console.log("Song not found.\n");
                    else console.log("listened to song.\n");
                  }
                });
                break;
              }
              case 2:
              {
                let songname = prompt("Enter song name: ");
                db.query(`User_listen_song(${songname});`, (err, res) => {
                  if (err) {
                    console.error("Error executing query", err.stack);
                  } else {
                    console.log("Select appropriate album id and track no from the following-\n");
                    console.log(res.rows);
                  }
                });
                break;
              }
              default:
                break;
            }
            break;
          }
          case 6:
            break;
          default:
            console.error("Enter correct choice!\n");
            break;
        }
      // }
    }
    
    case 5:
    {
      let username = prompt("Enter user name: ");
      let pswd = prompt("Enter password: ");
      let regSuccess = user.register(username, pswd);
      if (regSuccess == -1) {
        console.log("Query error!\n");
        break;
      } else if (regSuccess == 0) {
        console.log("Authentication failed.\n");
        break;
      }
      break;
    }

    case 6:
      break;

    default:
      console.log("Enter correct choice!");
      break;
  }
// }


