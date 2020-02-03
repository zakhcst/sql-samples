const rp = require('request-promise');

function promiseRequest() {
    const options = {
      uri: 'https://jsonplaceholder.typicode.com/users',
      headers: {
        'User-Agent': 'Request-Promise'
      },
      json: true
    };
    return rp.get(options);
  }
  
module.exports = promiseRequest;
