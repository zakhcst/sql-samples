const fsp = require('fs').promises;

function readFromFilePromise() {
    return fsp.readFile('./db/db-init-mySql/set-users.sql', {encoding: 'utf8'});
}

module.exports = readFromFilePromise;
