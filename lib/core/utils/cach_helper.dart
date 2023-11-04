import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper
{
  static SharedPreferences? sharedPreferences;
  static const String favouriteID = 'favourite';

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setFavourites(List<String> value)
  async{
    return sharedPreferences!.setStringList(favouriteID, value);
  }

  static List<String>? getFavourites()
  {
    return sharedPreferences!.getStringList(favouriteID);
  }
  static void deleteFavourites(favouritesID){
    sharedPreferences!.remove(favouriteID);
  }

}