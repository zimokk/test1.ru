var app = angular.module('myApp', [
    'ngRoute',
    'ngMaterial',
    'angular-loading-bar',
    'ngAnimate',
    'angular.filter'
]);

app.config(['$routeProvider', function($routeProvider) {
  $routeProvider
        .when('/index', {
            templateUrl: 'app/templates/main.html',
            controller: 'MainCtrl'
        })
        .when('/buy_car', {
            templateUrl: 'app/templates/buy_car.html',
            controller: 'BuyCarCtrl',
            resolve:{
                cars: ['Cars', function(Cars) {
                    return Cars.getAll();
                }]
            }
        })
        .when('/sell_car', {
            templateUrl: 'app/templates/sell_car.html',
            controller: 'SellCarCtrl'
        })
        .when('/car_info', {
          templateUrl: 'app/templates/car_info.html',
          controller: 'CarInfoCtrl',
          resolve:{
              //get images for current car
          }
        })
      .otherwise({redirectTo: '/index'});
}]);
