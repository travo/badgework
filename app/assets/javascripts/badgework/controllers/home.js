define(['application', 'badgework/services/member'], function(app) {
  app.register.controller('HomeController', function($scope, Member) {

    Member.get({}, function(member) {
      $scope.member = member;
      $scope.welcome = "Hi " + member.name + ", ready to do some Badgework?";
    });

  });
});