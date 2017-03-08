const request = require('supertest');

const app = require('../app');

describe('app', function() {
  it('should serve html on index', (done) => {
    request(app).get('/').expect('Content-Type', /html/).expect(200, done);
  });

  it('should redirect to home on non assets path', (done) => {
    request(app).get('/public/test').expect(302, done);
  });
});
