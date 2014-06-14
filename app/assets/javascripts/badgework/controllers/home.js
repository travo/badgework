define(['application'], function(app) {
  app.register.controller('HomeController', function($scope) {
    $scope.welcome = "Ready to do some Badgework?";
  });
});