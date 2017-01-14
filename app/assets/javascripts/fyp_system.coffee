angular.module("fyp_system", []).
  controller('projects_index_controller', ['$scope', '$filter', 
    ($scope, $filter)->
      $scope.init = ->
        $scope.projects = JSON.parse(document.getElementById('projects_list_json').innerHTML)
  ])
