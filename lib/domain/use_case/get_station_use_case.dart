import 'package:seoul_subway/domain/model/station.dart';
import 'package:seoul_subway/domain/repository/subway_station_repository.dart';

class GetStationUseCase {
  final SubwayStationRepository _repository;

  GetStationUseCase(this._repository);

  Future<List<Station>> call(String query) async {
    final stations = await _repository.getSubwayStations(query);
    return stations.toList();
  }
}
