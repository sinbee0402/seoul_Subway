import 'package:seoul_subway/domain/model/station.dart';

abstract interface class SubwayStationRepository {
  Future<List<Station>> getSubwayStations(String statnNm);
}
