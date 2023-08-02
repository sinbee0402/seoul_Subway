import 'dart:convert';

import 'package:seoul_subway/domain/model/station.dart';
import 'package:http/http.dart' as http;

class StationApi {
  static const baseUrl =
      'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/';

  Future<List<Station>> getStations(String query) async {
    final response = await http.get(Uri.parse('$baseUrl$query'));

    Iterable jsonArray = jsonDecode(response.body)['realtimeArrivalList'];
    return jsonArray.map((e) => Station.fromJson(e)).toList();
  }
}
