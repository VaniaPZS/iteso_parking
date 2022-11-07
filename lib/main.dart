import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteso_parking/home_page.dart';
import 'package:iteso_parking/place_finder/bloc/place_bloc.dart';
import 'package:iteso_parking/profile/bloc/profile_bloc.dart';

// void main() => runApp(const MyApp());

void main() => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PlaceBloc(),
          ),
          BlocProvider(
            create: (context) => ProfileBloc(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(6, 39, 84, 255))),
      title: 'Material App',
      home: HomePage(),
    );
  }
}
