import 'dart:convert';

import 'package:api/wallpaper/model.dart';
import 'package:http/http.dart' as http;

class WallpaperServices {
  String _baseUrl = 'https://api.pexels.com/v1/';
  final _key = 'fYIO9YrGMdmeYcHQVmW2LaA93TKbmWIMfVJQEBMlkQxN7UQzMMfQUX27';

  Future<List<WallpaperClass>> fetchWallpaperData(String category) async {
    try {
      final url = "${_baseUrl}search?query=${category}&per_page=33";
      final response =
          await http.get(Uri.parse(url), headers: {"Authorization": _key});
      final allData = jsonDecode(response.body);
      final List data = allData["photos"];
      return data.map((photo) => WallpaperClass.fromMap(photo)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
