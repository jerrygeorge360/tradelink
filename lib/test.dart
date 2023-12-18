import 'dart:convert';

import 'package:http/http.dart';
class HomeCategory{
  late int id;
  String _name='';
  String _url='';
  HomeCategory(this._name,this._url);

  get getName{
    return _name;
  }
  get getUrl{
    return _url;
  }
  set setName(String value){
    _name=value;
  }
  set setUrl(String value){
    _url=value;
  }
}

main(){
  getCategory();
}
List<HomeCategory>home_category=[];
Future<List> getCategory  () async{
  const url='http://192.168.65.234:5000/category';

  Response category=await get(Uri.parse(url)) ;
  List db_result=await jsonDecode(category.body);
  for(int i=0;i<db_result.length;i++){
    HomeCategory obj=HomeCategory(db_result[i]['name'], db_result[i]['url']);
    home_category.add(obj);
  }
  print(home_category[0].getName);


  return home_category;
}