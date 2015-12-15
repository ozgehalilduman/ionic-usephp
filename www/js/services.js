angular.module('starter.services', [])
  .factory('bilgiService',function($http){
        return{
            duyurulariGetir:function(scope){
                var $promise=$http.post('http://localhost:8080/telefon/duyurulariGetir.php');
                $promise.then(function(msg){
                    scope.duyurular=msg.data;
                 });//promise kısmının
               },//duyurulariGetir
             ogrencileriGetir:function(scope,sinif){
                 var $promise=$http.post('http://localhost:8080/telefon/ogrencileriGetir.php',{'sinif':sinif});
                 $promise.then(function(msg){
                     scope.ogrenciler=msg.data;
                  });//promise kısmının
                },//ogrencileriGetir
              siniflariGetir:function(scope){
                  var $promise=$http.post('http://localhost:8080/telefon/siniflariGetir.php');
                  $promise.then(function(msg){
                      scope.siniflar=msg.data;
                   });//promise kısmının
                 }//siniflariGetir
          }//return
     });//factory
