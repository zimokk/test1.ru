app.factory('Cars',function($http){
    var carsService = {
        all: [],
        getAll: function() {
            $http.get("php/read_cars.php").success(function(response){
                angular.copy(response.cars,carsService.all);
            }).error(function(msg){

            });
        }
    };
    carsService.getAll();
    return carsService;
});