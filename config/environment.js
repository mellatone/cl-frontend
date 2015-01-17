/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'cl-frontend',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    namespace: 'api/v1',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  // Ember Simple Auth
  ENV['simple-auth'] = {
    session: 'session:usersession',
    authorizer: 'simple-auth-authorizer:token'
  };
  ENV['simple-auth-token'] = {
    serverTokenEndpoint: ENV.namespace + '/auth-token/',
    serverTokenRefreshEndpoint: ENV.namespace + '/auth-token-refresh/',
    identificationField: 'email',
    tokenPropertyName: 'token',
    authorizationPrefix: 'Bearer ',
    authorizationHeaderName: 'Authorization',
    timeFactor: 1000,
  };

  if (environment === 'development') {
    ENV.locationType = 'history';
    // ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'history';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
