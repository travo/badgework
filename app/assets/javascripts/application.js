define(['angularAMD', 'angular-route', 'angular-resource'], function(angularAMD) {

  var app = angular.module('badgework', ['ngRoute', 'ngResource']);

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
