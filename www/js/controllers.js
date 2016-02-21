angular.module('starter.controllers',[])

.controller('AppCtrl', function($scope, $ionicModal, $timeout,bilgiService) {

  // With the new view caching in Ionic, Controllers are only called
  // when they are recreated or on app start, instead of every page change.
  // To listen for when this page is active (for example, to refresh data),
  // listen for the $ionicView.enter event:
  //$scope.$on('$ionicView.enter', function(e) {
  //});
  // Form data for the login modal
  $scope.loginData = {};

  // Create the login modal that we will use later
  $ionicModal.fromTemplateUrl('templates/login.html', {
    scope: $scope
  }).then(function(modal) {
    $scope.modal = modal;
  });

  // Triggered in the login modal to close it
  $scope.closeLogin = function() {
    $scope.modal.hide();
  };

  // Open the login modal
  $scope.login = function() {
    $scope.modal.show();
  };

  // Perform the login action when the user submits the login form
  $scope.doLogin = function()
  {
    console.log('Doing login', $scope.loginData);
    $scope.islemdurum=bilgiService.loginYap($scope,$scope.loginData);
    // Simulate a login delay. Remove this and replace with your login
    // code if using a login system


  };
})

.controller('PlaylistsCtrl', function($scope) {
  $scope.playlists = [
    { title: 'Reggae', id: 1 },
    { title: 'Chill', id: 2 },
    { title: 'Dubstep', id: 3 },
    { title: 'Indie', id: 4 },
    { title: 'Rap', id: 5 },
    { title: 'Cowbell', id: 6 }
  ];
})
.controller('duyurularCtrl', function($scope,bilgiService) {
  $scope.msj="Başarılar...";
  $scope.duyurular=bilgiService.duyurulariGetir($scope);
})
.controller('yoklamaalCtrl', function($scope,bilgiService) {
  $scope.msj="Başarılar...";
  $scope.saat=1;
  $scope.ders=1;
  $scope.ogrt=1;
  $scope.tarih="20.02.2016";
  $scope.msj="Başarılar...";

  $scope.siniflar=bilgiService.siniflariGetir($scope);
  $scope.yokyazilanlar=[];
  $scope.yoklamagoster=false;
  $scope.sinif_ogr = function(sinif) {
    $scope.yokyazilanlar=[];
    $scope.ogrenciler=bilgiService.ogrencileriGetir($scope,sinif);
  };
  $scope.yok_yaz = function(ogr) {
    console.info(ogr);
    $scope.yoklamagoster=true;
    $scope.yokyazilanlar.push(ogr);
    bilgiService.yok_yaz_f($scope,ogr);
  };
  $scope.var_yaz = function(ogr) {
    console.info(ogr);
    if($scope.yokyazilanlar.length==0){$scope.yoklamagoster=false;}
    $scope.ogrenciler.push(ogr);
    bilgiService.var_yaz_f($scope,ogr);
  };
})
.controller('PlaylistCtrl', function($scope, bilgiService,$stateParams) {
  $scope._id=$stateParams.playlistId;
  $scope.duyurular=bilgiService.duyurulariGetir($scope);
});
