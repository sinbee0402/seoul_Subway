import 'package:flutter/material.dart';
import 'package:seoul_subway/domain/model/station.dart';
import 'package:seoul_subway/domain/use_case/get_station_use_case.dart';

class MainViewModel with ChangeNotifier {
  final GetStationUseCase _getStationUseCase;

  MainViewModel(this._getStationUseCase);

  List<Station> _stations = [];
  List<Station> get stations => _stations;

  void fetch(String query) async {
    _stations = await _getStationUseCase(query);
    notifyListeners();
  }
}
