import 'package:flutter/material.dart';
import 'package:seoul_subway/components/subway_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('지하철 실시간 정보'),
        centerTitle: true,
        elevation: 3,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '역 이름',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        hintText: '역을 입력하세요',
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      //onSubmitted: ,
                    ),
                  ),
                  const SizedBox(width: 24),
                  TextButton(
                    onPressed: () {
                      //onSubmitted과 같은 코드 사용
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      shape: const RoundedRectangleBorder(),
                    ),
                    child: const Text(
                      '조회',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '도착 정보',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return SubwayItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
