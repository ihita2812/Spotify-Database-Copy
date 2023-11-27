const prompt = require('prompt-sync')({sigint: true});
const db = require('./local_modules/db-connect.js');
const user = require('./local_modules/user-login.js');

var choice = Number(prompt(`Enter 1 for "Listing top artists of all time"\n
                     Enter 2 to see number of listeners of a particular artist\n
                     Enter 3 for seeing top artists, genre-wise\n
                     Enter 4 to login\n
                     Enter 5 to register as a user\n`));
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
    user.options();
    let choice2 = Number(prompt());
    switch (choice2) {
      case 1:
      {
        db.query(`User_top_genre(${username});`, (err, res) => {
          if (err) {
            console.error("Error executing query", err.stack);
          } else {
            console.log(res.rows);
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
        break;
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
        break;
    }
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

  default:
    console.log("Enter correct choice!");
    break;
}


