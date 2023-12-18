import 'dart:convert';

import 'package:http/http.dart' ;

//uncompleted state
//completed-with data or error.
class User{
  String name='';
  String username='';
  String email='';
  String address='';
  String phone='';
  String website='';
  String company='';
  User(this.name,this.username,this.email,this.address,this.phone,this.website,this.company);
}
Map<String,dynamic> requestBody={
  'name':'Jerry',
  'work':'Excelling'
};
Future<void> postData() async{
  try{
    final response=await post(Uri.parse('http://localhost:5000/login'),body:requestBody);
    if(response.statusCode==200){
      print('${response.body}');
    }
    else{
      print('Error, ${response.statusCode}');
    }
  }
  catch(e){
    print(e);
  }

}

void main()async{
  FugetData() async{
    final ultimate=await get(Uri.parse('http://localhost:5000/'));
    var mew=jsonDecode(ultimate.body);
    print(mew.runtimeType);
  }
  FugetData();
  postData();

  //
  // Future<List<User>> getCategory  () async{
  //   List<User> d=[];
  //   Response category=await get(Uri.parse('https://jsonplaceholder.typicode.com/users')) ;
  //   List me=await jsonDecode(category.body);
  //   for(int i=0;i<me.length;i++){
  //     User obj= User(me[i]['name'],me[i]['username'],me[i]['email'],me[i]['name'],me[i]['name'],me[i]['phone'],me[i]['name']);
  //         d.add(obj);
  //   }
  //   return d;
  //   // print(me['userId']);
  //   // print(me);
  // }
  //
  // List<User> da=await getCategory();
  // print(da);

  // final myFuture=Future.delayed(
  //   Duration(seconds: 5),
  //       ()=>12,
  // ).then((value) {
  //   print(value);
  // }).catchError((onError){
  //   print(onError);
  // })
  // ;

  //streams
  //single subscription
  //broadcast stream
  //ondone,onError
  //pause,cancel,resume.


}
