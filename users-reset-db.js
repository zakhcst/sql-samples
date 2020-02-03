require('dotenv').config();

const DB = require('./db/db-query');
const readSql = require('./read-sql');

function dropSchema(db) {
  const query = 'DROP SCHEMA `?`';
  const dataFields = ['sampleusers'];
  return db.query(query, dataFields);
}

function setDB(db) {
    const dataFields = [];
    return readSql()
        .then(query => db.query(query, dataFields));
}

function main() {
  const db = new DB();
  return setDB(db)
  // return  dropSchema(db)
    // .then(() => setDB())
    .then(() => db.close());
}

if (!module.parent) {
  main();
}
