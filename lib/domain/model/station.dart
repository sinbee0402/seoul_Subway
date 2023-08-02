class Station {
  final String trainLineNm; // 도착지방면(방화행-서대문방면)
  final String statnNm; // 지하철역명(입력한 지하철역명)
  final String barvlDt; //열차도착예정시간(단위:초)
  final String arvlMsg3; // 두번째 도착 메세지(종합운동장 도착, 12분 후 (광명사거리))

  Station({
    required this.statnNm,
    required this.trainLineNm,
    required this.barvlDt,
    required this.arvlMsg3,
  });
}
