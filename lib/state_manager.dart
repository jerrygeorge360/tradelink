
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:tradelink/services/securestorage.dart';

import 'package:tradelink/screens/best_offers.dart';
SecureStorage clientStorage=SecureStorage();

const rootURL='http://192.168.221.234:5000/';

class HomeCategory{
  late int id;
  String _name='';
  String _url='';
  List <dynamic> _products=[];
  int _productLength;
  HomeCategory(this._name,this._url,this._products,this._productLength);


  get getName{
    return _name;
  }
  get getUrl{
    return _url;
  }
  get getProducts{

    return _products;
  }
  get getProductsLength{
    return _productLength;
  }
  set setProductsLength(int value){
    _productLength=value;
  }
  set setName(String value){
    _name=value;
  }
  set setUrl(String value){
    _url=value;
  }
}
class HomeProducts{
  late int id;
  String _name='';
  String _url='';
  int _price;
  HomeProducts(this._name,this._url,this._price);
  get getName{
    return _name;
  }
  get getUrl{
    return _url;
  }
  get getPrice{
    return _price;
  }
  set setName(String value){
    _name=value;
  }
  set setUrl(String value){
    _url=value;
  }
  set setPrice(int value){
    _price=value;
  }
}
class PlaceOrder{
  String name='';
  int price=0;
  String description='';
  List pics=[];
  List specs=[];

  PlaceOrder(this.name,this.description,this.pics,this.specs,this.price);


}
class Register{
  String message='Field cannot be left blank';
  String name='';
  String password='';
  String confirm_password='';
  String email='';

}
class Login{

  String _name='';
  String _password='';
  final String _message='Field cannot be left blank';

  set setName(String value) {
    _name= value;
  }
  set setPassword(String value){
    _password=value;
  }
  String get LogName{
    return _name;
  }
  String get LogPassword{
    return _password;
  }
  String get LogMessage{
    return _message;
  }

}
class Otp{
  String otp='';
}
class Location{
  String location='';
}
class BestOffer{
  late int id;
  String name='';
  String url='';
  String price='';
  BestOffer(this.name,this.url,this.price);
}
class AccountManagement{}

class StateManager extends ChangeNotifier{
  //homepage
  List <HomeCategory> home_category=[];
  Future<List> getCategory  () async{

    const url='${rootURL}category';
    print(url);
    String token=await clientStorage.readSecureData('accessToken');
    Response category=await get(Uri.parse(url),headers: {'Access-Token':token}) ;

    print(category.body);
    List db_result=await jsonDecode(category.body);
    for(int i=0;i<db_result.length;i++){
      HomeCategory obj=HomeCategory(db_result[i]['name'], db_result[i]['url'],db_result[i]['product'],db_result[i]['product_length']);
      home_category.add(obj);
    }
    notifyListeners();
    return home_category;
  }

  List <HomeProducts> home_product=[];
 Future<List> getProduct  () async{
   const url='${rootURL}product';
   Response products=await get(Uri.parse(url)) ;
   List db_result=await jsonDecode(products.body);
   for(int i=0;i<db_result.length;i++){
     HomeProducts obj=HomeProducts(db_result[i]['name'], db_result[i]['url'],db_result[i]['price']);
     home_product.add(obj);

   }
   notifyListeners();
   return home_product;
 }
//place order
  dynamic placeOrder;
// for place order route
  Future<List> getPlaceOrder  (String primaryKey) async{
    print(primaryKey);

   String url='${rootURL}place_order';
    Map<String,dynamic> requestData={'primary_key':primaryKey};
    print(requestData);
    String token=await clientStorage.readSecureData('accessToken');
    final request=await post(Uri.parse(url),body: requestData,headers: {'Access-Token':token});
    dynamic db_result=await jsonDecode(request.body);
    placeOrder=db_result;
    notifyListeners();





    return [];
  }
var headImage;
String ItemName='';
String ItemPrice='';
var rating;
String location='';
String description='';
var otherImages;
var specs;

//register
Register Reg=Register();
getRegisterName(value){
  Reg.name=value;
  notifyListeners();
}

getRegisterPassword(value){
  Reg.password=value;
  notifyListeners();
}

getRegisterEmail(value){
  Reg.email=value;
  notifyListeners();
}
getRegisterConfirmPassword(value){
  Reg.confirm_password=value;
  notifyListeners();
}
  String get RegName{
    return Reg.name;
  }
  String get RegMessage{
  notifyListeners();
    return Reg.message;
  }
  String get RegEmail{
    return Reg.email;
  }
  String get RegPassword{
    return Reg.password;
  }
Future<void> sendRegister() async{
  const url='${rootURL}register';
  try{

      Map<String,dynamic> requestData={'name':RegName,'password':RegPassword,'email':RegEmail};
      final request=await post(Uri.parse(url),body: requestData);



      if(request.statusCode==200){
        Reg.message='Successful';
      }

      else{
        return;
      }
    }
    catch(e){
      print(e);
    }
    notifyListeners();
  }



//login
  Login Log=Login();
  getLoginName(value){
    Log.setName=value;
    notifyListeners();
  }
  getLoginPassword(value){
    Log.setPassword=value;
    notifyListeners();
  }
  String get LogName{
    return Log.LogName;
  }
  String get LogPassword{
    return Log.LogPassword;
  }

  String get LogMessage{
    notifyListeners();
    return Log.LogMessage;

  }
  Future<void> sendLogin() async{
    const url='${rootURL}login';
    try{

      Map<String,dynamic> requestData={'name':LogName,'password':LogPassword};
      final request=await post(Uri.parse(url),body: requestData);
      if(request.statusCode==200){
        Log.setName='';
        Log.setPassword='';
        dynamic response=jsonDecode(request.body);
        bool status=response['ok'];
        if(status==true){
          String accessToken=response['access_token'];
          String refreshToken=response['refresh_token'];

          dynamic writeAccessToken=await clientStorage.writeSecureData('accessToken',accessToken);
          dynamic writeRefreshToken=await clientStorage.writeSecureData('refresh_token', refreshToken);

        }
      }

      else{

      }
    }
    catch(e){
      print(e);
    }

    notifyListeners();

}


//OTP
getOTP(){
  Otp().otp='';
  notifyListeners();
}
//location

  getLocation(value){
    Location().location=value;
    notifyListeners();
  }

//bestoffer
  Future<List> getBestOffer () async{
    List <BestOffer> best_offer=[];
    Response best_offers=await get(Uri.parse('')) ;
    List db_result=await jsonDecode(best_offers.body);
    for(int i=0;i<db_result.length;i++){
      BestOffer obj=BestOffer(db_result[i]['name'], db_result[i]['url'],db_result[i]['url']);
      best_offer.add(obj);
    }
    notifyListeners();
    return best_offer;




    return [];
  }



//account management
var phonenumber;
var accloaction;
var emailaddress;
var password;
var profilepic;

}