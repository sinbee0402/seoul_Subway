import 'package:flutter/material.dart';
import 'package:seoul_subway/domain/model/station.dart';

class SubwayItem extends StatelessWidget {
  final Station station;

  const SubwayItem({
    Key? key,
    required this.station,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/1850/1850804.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 12),
          Text(
            station.trainLineNm,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '${int.parse(station.barvlDt) ~/ 60}분 후 (${station.arvlMsg3})',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
