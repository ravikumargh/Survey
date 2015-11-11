'use strict';

angular.module('yeomanApp')
  .config(function ($routeProvider) {
      $routeProvider
        .when('/serviceticket', {
            templateUrl: 'views/serviceticket/servicetickets.html',
            controller: 'ServiceTicketController'
        });
  });
