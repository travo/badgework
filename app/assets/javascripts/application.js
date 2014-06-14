define(['angularAMD', 'angular-route'], function(angularAMD) {

  var app = angular.module('badgework', ['ngRoute']);

  app.config(function($routeProvider) {
    $routeProvider.when('/home', angularAMD.route({
      controller: 'HomeController',
      templateUrl: 'templates/home.html',
      controllerUrl: 'badgework/controllers/home'
    }));
  });

  angularAMD.bootstrap(app);

  return app;

});
