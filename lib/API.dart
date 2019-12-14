import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.litamua.com/jadwalmakeup/items/jadwal_lita?limit=10&page=0&meta=*&sort=tanggal,jam";
//const baseUrl = "https://jsonplaceholder.typicode.com/users";

class API {
  static Future getSchedule() {
    var url = baseUrl;
    return http.get(url);
  }
}
