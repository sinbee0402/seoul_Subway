import 'package:flutter/material.dart';

class SubwayItem extends StatelessWidget {
  const SubwayItem({Key? key}) : super(key: key);

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
          const Text(
            '~~행 - ~~방면',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            'n분 후 (역 이름)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
