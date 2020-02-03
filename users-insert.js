require('dotenv').config();

const DB = require('./db/db-query');
const promiseRequest = require('./users-from-request');
const readFromFilePromise = require('./users-from-file');

function insertCompany(db, company) {
  const { name, catchPhrase: catchphrase, bs } = company;
  const query = 'INSERT INTO companies (name, catchphrase, bs) VALUES (?,?,?)';
  const dataFields = [name, catchphrase, bs];
  return db.query(query, dataFields);
}

function insertAddress(db, address) {
  const query =
    'INSERT INTO address (street, suite, city, zipcode, geo_id) VALUES (?,?,?,?,?)';
  const { street, suite, city, zipcode } = address;
  return insertGeo(db, address).then(res => {
    const geo_id = res.insertId;
    const dataFields = [street, suite, city, zipcode, geo_id];
    return db.query(query, dataFields);
  });
}

function insertGeo(db, address) {
  const query = 'INSERT INTO geo (lat, lng) VALUES (?,?)';
  const { lat, lng } = address.geo;
  const dataFields = [lat, lng];
  return db.query(query, dataFields);
}


function insertUser(db, user) {
  const query =
    'INSERT INTO users (name, username, email, phone, website, company_id, address_id) VALUES (?,?,?,?,?,?,?)';
  const { name, username, email, phone, website } = user;
  const dataFields = [name, username, email, phone, website, 0, 0];

  return insertAddress(db, user.address)
    .then(res => {
      dataFields[6] = res.insertId;
    })
    .then(() => insertCompany(db, user.company))
    .then(res => {
      dataFields[5] = res.insertId;
    })
    .then(() => db.query(query, dataFields));
}

function sequentialInsertUsers(users) {
  const db = new DB();
  let promiseChain = Promise.resolve(true);
  users.forEach(user => {
    promiseChain = promiseChain.then(() => insertUser(db, user));
  });
  return promiseChain
  .then(() => db.close());
}

function main() {
  return promiseRequest()
  // return readFromFilePromise()
    .then(users => {
      console.table(users)
      return users;
    })
    .then(users => {
      return sequentialInsertUsers(users);
    })
    .catch(err => console.log(err));
}

if (!module.parent) {
  main();
}
