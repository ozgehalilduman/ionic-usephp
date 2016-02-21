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
                 },//siniflariGetir
               loginYap:function(scope,loginData){
                   var $promise=$http.post('http://localhost:8080/telefon/loginYap.php',{'loginData':loginData});
                   $promise.then(function(msg){
                       console.info(msg.data);
                       if(msg.data=='TAMAM')
                       {scope.islemdurum="İŞLEMİNİZ BAŞARILI";scope.closeLogin();}
                       else
                       {scope.islemdurum="GİRİLEN DEGERLER HATALI";}
                    });//promise kısmının
                  },//siniflariGetir
               yok_yaz_f:function(scope,ogr){
                   var $promise=$http.post('http://localhost:8080/telefon/yokyaz.php',{'ogr':ogr,'ders':scope.ders,'saat':scope.saat,'ogrt':scope.ogrt,'tarih':scope.tarih});
                   $promise.then(function(msg){
                       console.info(msg.data);
                    });//promise kısmının
                  },//yok_yaz_f
                var_yaz_f:function(scope,ogr){
                    var $promise=$http.post('http://localhost:8080/telefon/varyaz.php',{'ogr':ogr,'ders':scope.ders,'saat':scope.saat,'ogrt':scope.ogrt,'tarih':scope.tarih});
                    $promise.then(function(msg){
                        console.info(msg.data);
                     });//promise kısmının
                   }//var_yaz_f
          }//return
     });//factory
