import 'package:shared_preferences/shared_preferences.dart';
class HelperFunctions{

  //keys

  static String userLoggedInKey ="LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  // saving the data to sf



  //getting the data from sf

static Future<bool?> getUserLoggedInStats() async{
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.getBool(userLoggedInKey);
  }
}