const fsp = require('fs').promises;

function readFromFilePromise() {
    return fsp.readFile('./users-sample.json', {encoding: 'utf8'}).then(file => JSON.parse(file));
}

module.exports = readFromFilePromise;
