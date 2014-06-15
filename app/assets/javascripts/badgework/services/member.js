define(['application'], function(app) {
  app.register.service('Member', function($resource) {

    var Member = $resource('/api/v1/members');
    return Member;

  });
});
