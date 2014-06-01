angular
    .module('badgework', ['ngRoute', 'ngResource'])
    .config(['$routeProvider'], function($routeProvider) {
        $routeProvider.when('/', {
            controller: 'HomeCtrl'
        });
    })