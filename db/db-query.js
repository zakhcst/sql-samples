const db = require('./db-connection');

class Database {
  constructor() {
    this.connection = db();
  }
  query(sql, values) {
    console.log('query');
    console.log(sql);
    console.log(values);

    return new Promise((resolve, reject) => {
      this.connection.query(sql, values, (error, rows) => {
        if (error) {
          console.error('Query error', sql, values);
          console.error(error);
          return this.close().then(
            () => {
              return reject(error);
            },
            error => reject(error)
          );
        }
        resolve(rows);
      });
    });
  }
  close() {
    return new Promise((resolve, reject) => {
      console.log('MySQL Connection close');
      this.connection.end(error => {
        if (error) {
          console.error('MySQL Connection close error');
          return reject(error);
        }
        resolve('close');
      });
    });
  }
}

module.exports = Database;
