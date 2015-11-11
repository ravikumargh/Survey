'use strict';

/**
 * @ngdoc function
 * @name yeomanApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the yeomanApp
 */
angular.module('yeomanApp')
  .controller('ServiceTicketController', ['$scope', 'ServiceTicketService', '$uibModal', '$log', function ($scope, ServiceTicketService, $uibModal, $log) {

      $scope.newserviceticket = {
          'Name': '',
          'Code': ''
      }

    
      $scope.init = function () {

          //$scope.servicetickets = null;
          $scope.serviceticket={
              date:"Aug 01",
              clientname:"hdfc-Auto",
              clienttitle:"Auto valued at 75000",
              survayedon:"survayed on August 15, 2015 by Ravikumar",
              surveyno: 35468,
              location : 'Mysore',
              status: 'new'
          }
          $scope.servicetickets = [{
              date:"Aug 02",
              clientname:"hdfc-Auto",
              clienttitle:"Auto valued at 75000",
              survayedon:"survayed on August 15, 2015 by Ravikumar",
              surveyno: 35468,
              location : 'Mysore',
              status: 'new'
          },{
              date:"Aug 02",
              clientname:"hdfc-Auto",
              clienttitle:"Auto valued at 75000",
              survayedon:"survayed on August 15, 2015 by Ravikumar",
              surveyno: 35468,
              location : 'Mysore',
              status: 'new'
          }];

          //ServiceTicketService.getServiceTickets()
          //    .then(function (response) {
          //        $scope.servicetickets = response.data;
          //    },
          //    function (err) {

          //    });
      };

      $scope.deleteServiceTicket = function (serviceticket) {
          ServiceTicketService.deleteServiceTicket(serviceticket.Id).then(function (response) {
              //_.remove($scope.servicetickets, function (serviceticket) {
              //    return serviceticket.Id;
              //});
              $scope.init();
          },
            function (err) {
                $scope.error = err;
            });
      }
      $scope.createNewServiceTicket = function () {
          $scope.error = undefined;
          //if (!$scope.newserviceticket.name) {
          //    $scope.error = 'Please enter valid serviceticket name.';
          //    return;
          //}
          $scope.newserviceticket.Name = "ServiceTicket 1";
          $scope.newserviceticket.Code = "C1";
          $scope.addNew($scope.newserviceticket);
      };

      $scope.addNew = function (newserviceticket) {
          ServiceTicketService.addNewServiceTicket(newserviceticket).then(function (response) {
              $scope.init();
          },
          function (err) {

          });
      }

      $scope.update = function (serviceticket) {
          ServiceTicketService.updateServiceTicket(serviceticket).then(function (response) {
              $scope.init();
          },
          function (err) {

          });
      }
      
      $scope.editServiceTicketModel = function (serviceticket) {
          $scope.selectedServiceTicket = angular.copy(serviceticket);

          var modalInstance = $uibModal.open({
              animation: $scope.animationsEnabled,
              templateUrl: 'myModalContent.html',
              controller: 'ModalInstanceCtrl',
              size: 'sm',
              animation: true,
              resolve: {
                  parentScope: function () {
                      return $scope;
                  }
              }
          });

          modalInstance.result.then(function (serviceticket) {
              $scope.update(serviceticket);
          }, function () {
              $log.info('Modal dismissed at: ' + new Date());
          });
      }
          $scope.openNewServiceTicketModel = function () {
              $scope.selectedServiceTicket= $scope.newserviceticket;
          var modalInstance = $uibModal.open({
              animation: $scope.animationsEnabled,
              templateUrl: 'myModalContent.html',
              controller: 'ModalInstanceCtrl',
              size: 'sm',
              animation: true,
              resolve: {
                  parentScope: function () {
                      return $scope;
                  }
              }
          });

          modalInstance.result.then(function (newServiceTicket) {
              $scope.addNew(newServiceTicket);
          }, function () {
              $log.info('Modal dismissed at: ' + new Date());
          });
      };
      $scope.deleteServiceTicketModel = function (serviceticket) {
          $scope.selectedServiceTicket = serviceticket;
          var modalInstance = $uibModal.open({
              animation: $scope.animationsEnabled,
              templateUrl: 'DeleteConfirmationModalContent.html',
              controller: 'DeleteConfirmationModalInstanceControl',
              size: 'sm', 
              animation: true,
              resolve: {
                  parentScope: function () {
                      return $scope;
                  }
              }
          });

          modalInstance.result.then(function (selectedServiceTicket) {
              $scope.deleteServiceTicket(selectedServiceTicket);
          }, function () {
              $log.info('Modal dismissed at: ' + new Date());
          });
      };
  }]);


angular.module('yeomanApp').controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, parentScope) {

    $scope.selectedServiceTicket = parentScope.selectedServiceTicket;
    
    $scope.ok = function () {
        $uibModalInstance.close($scope.selectedServiceTicket);
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});

angular.module('yeomanApp').controller('DeleteConfirmationModalInstanceControl', function ($scope, $uibModalInstance, parentScope) {

    $scope.selectedServiceTicket = parentScope.selectedServiceTicket;


    $scope.ok = function () {
        $uibModalInstance.close($scope.selectedServiceTicket);
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});