require('dotenv').config();

const DB = require('./db/db-query');

function print(results) {
  console.table(results);
}

function left(db) {
  const query =
    'SELECT u.id, u.name, u.company_id, u.address_id FROM users AS u';
  return db.query(query).then(print);
}

function right(db) {
  const query = 'SELECT a.id, a.city, a.street, a.geo_id FROM address AS a;';
  return db.query(query).then(print);
}

function innerJoin(db) {
  const query =
    'SELECT u.id, u.name, u.company_id, u.address_id, a.id, a.street, a.geo_id \
    FROM users AS u \
    INNER JOIN address AS a ON u.address_id = a.id;';
  // same as
  // const query = 'SELECT u.id, u.name, u.company_id, u.address_id, a.id, a.street, a.geo_id  FROM users AS u JOIN address AS a ON u.address_id = a.id;';
  return db.query(query).then(print);
}

function fullJoin(db) {
  const query =
    'SELECT \
      u.id AS u_id, u.username, u.company_id, u.address_id, a.id AS a_id, a.city, a.street, a.geo_id FROM users AS u \
        LEFT JOIN address AS a ON u.address_id = a.id \
    UNION \
    SELECT \
      u.id AS u_id, u.username, u.company_id, u.address_id, a.id AS ai_d, a.city, a.street, a.geo_id FROM users AS u \
        RIGHT JOIN address AS a ON u.address_id = a.id;';

  return db.query(query).then(print);
}

function crossJoin(db) {
  const query =
    'SELECT u.id, u.name, u.company_id, u.address_id, a.id, a.street, a.geo_id \
    FROM users AS u \
    CROSS JOIN address AS a;';
  // same as (when there is no condition)
  // const query = 'SELECT u.id, u.name, u.company_id, u.address_id, a.id, a.street, a.geo_id FROM users AS u JOIN address AS a;';
  return db.query(query).then(print);
}

function leftJoin(db) {
  const query =
    'SELECT u.id, u.id as u_id, u.name, u.company_id, u.address_id, a.id, a.id as a_id, a.street, a.geo_id \
    FROM users AS u \
    LEFT JOIN address AS a ON u.address_id = a.id;';
  return db.query(query).then(print);
}

function rightJoin(db) {
  const query =
    'SELECT u.id, u.id as u_id, u.name, u.company_id, u.address_id, a.id, a.id as a_id, a.street, a.geo_id FROM users AS u \
    RIGHT JOIN address AS a ON u.address_id = a.id;';
  return db.query(query).then(print);
}

function inner3Right1Join(db) {
  const query =
    'SELECT u.id, u.name, u.company_id, u.address_id, a.id, a.street, a.geo_id, g.lat, g.lng \
  FROM users AS u \
  JOIN address AS a ON u.address_id = a.id \
  RIGHT JOIN geo AS g ON a.geo_id = g.id';
  return db.query(query).then(print);
}

function view(db) {
  const view =
    'CREATE VIEW IF NOT EXISTS user_short AS SELECT u.id, u.name, u.address_id FROM users AS u';
  const query = 'SELECT * FROM user_short AS us;';
  return db
    .query(view)
    .then(_ => db.query(query))
    .then(print);
}

function coalesce(db) {
  const query =
    'SELECT *, \
      COALESCE( \
          (SELECT city FROM address AS a WHERE a.id = us.address_id), \
        "N/A") as city \
    FROM user_short AS us;';
  return db.query(query).then(print);
}

function union(db) {
  const query =
    "SELECT id, CONCAT('o', id), name, address_id, 'Old' as status FROM user_short AS us WHERE us.id < 11 \
      UNION \
      SELECT id, CONCAT('n', id), name, address_id, 'New' as status FROM user_short AS us WHERE us.id > 10";
  return db.query(query).then(print);
}

function intersect(db) {
  const query =
    "SELECT name, address_id, 'common' as status FROM user_short AS us WHERE us.id < 24 \
      INTERSECT \
      SELECT name, address_id, 'common' as status FROM user_short AS us WHERE us.id > 6";
  return db.query(query).then(print);
}

function getDate(db) {
  const query = 'SELECT NOW()';
  return db.query(query).then(print);
}

function selectByFirstLetter(db) {
  const query =
    'SELECT u.id, u.name, u.username FROM users AS u WHERE u.username LIKE "A%""';
  return db.query(query).then(print);
}


function selectByThirdHighest(db) {
  const query =
    'SELECT * \
      FROM \
      (SELECT * FROM users \
          ORDER BY users.company_id DESC \
          LIMIT 3 \
      ) AS u \
      ORDER BY company_id ASC\
      LIMIT 1';
  return db.query(query).then(print);
}

function minMaxCountAvgSum(db) {
  const query =
    'SELECT MIN(company_id), MAX(company_id), COUNT(*), AVG(company_id), SUM(company_id), VARIANCE(company_id) \
      FROM users';
  return db.query(query).then(print);
}

function odd(db) {
  const query =
    'SELECT * \
      FROM users \
      WHERE MOD(id, 2)=1';
  return db.query(query).then(print);
}

function distinct(db) {
  const query =
    'SELECT DISTINCT username, email, name \
      FROM users';
  return db.query(query).then(print);
}



function main() {
  const db = new DB();
  return (
    left(db)
      .then(() => right(db))
      .then(() => innerJoin(db))
      .then(() => fullJoin(db))
      .then(() => crossJoin(db))
      .then(() => leftJoin(db))
      .then(() => rightJoin(db))
      .then(() => inner3Right1Join(db))
      .then(() => view(db))
      .then(() => coalesce(db))
      .then(() => union(db))
      .then(() => intersect(db))
      .then(() => getDate(db))
      .then(() => selectByFirstLetter(db))
      .then(() => selectByThirdHighest(db))
      .then(() => minMaxCountAvgSum(db))
      .then(() => odd(db))
      .then(() => distinct(db))
      .then(() => db.close())
      .catch(err => console.log(err))
  );
}

if (!module.parent) {
  main();
}
