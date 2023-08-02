import 'package:seoul_subway/data/data_source/station_api.dart';
import 'package:seoul_subway/domain/model/station.dart';
import 'package:seoul_subway/domain/repository/subway_station_repository.dart';

class SubwayStationRepositoryImpl implements SubwayStationRepository {
  final _api = StationApi();

  @override
  Future<List<Station>> getSubwayStations(String query) async {
    final stations = await _api.getStations(query);
    return stations.toList();
  }
}
