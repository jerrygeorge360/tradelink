import 'package:tradelink/screens/homepage.dart';
import 'package:tradelink/screens/location.dart';
import 'package:tradelink/screens/register.dart';
import 'package:tradelink/screens/login.dart';
import 'package:tradelink/screens/otp_verification.dart';
import 'package:tradelink/screens/best_offers.dart';
import 'package:tradelink/screens/buy_page.dart';
import 'package:tradelink/screens/place_order.dart';
import 'package:tradelink/screens/payment_status.dart';
import 'package:tradelink/screens/settings.dart';
// import 'package:tradelink/screens/account_management.dart';
import 'package:tradelink/screens/settings_front.dart';

getRoutes(){
  return{

      '/home':(context)=> HomePage(),
      '/register':(context)=>RegisterPage(),
      '/login':(context)=>LoginPage(),
      '/otp':(context)=>OTPPage(),
      '/placeorder':(context)=>PlaceOrder(),
      '/settingsFront':(context)=>SettingsFront(),
      '/settings':(context)=>Settings(),
      '/location':(context)=>LocationPage(),
      '/payment':(context)=>PaymentStatus(),
      '/buy':(context)=>BuyPage(),
      '/bestoffer':(context)=>BestOffers(),
      // '/accountmanagement':(context)=>AccountManagement(),


  };
}