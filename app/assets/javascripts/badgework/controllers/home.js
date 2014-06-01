angular
    .module('badgework', [])
    .controller('HomeCtrl', ['$scope', function($scope) {
        $scope.welcome = "Let's do some Badgework";
    }]);