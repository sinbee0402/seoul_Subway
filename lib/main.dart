import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seoul_subway/data/repository/subway_station_repository_impl.dart';
import 'package:seoul_subway/domain/use_case/get_station_use_case.dart';
import 'package:seoul_subway/presentation/main/main_screen.dart';
import 'package:seoul_subway/presentation/main/main_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainViewModel(
            GetStationUseCase(SubwayStationRepositoryImpl()),
          ),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
