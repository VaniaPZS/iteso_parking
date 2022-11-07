import 'package:flutter/material.dart';
import 'package:iteso_parking/place_finder/bloc/place_bloc.dart';
import 'package:iteso_parking/place_finder/place.dart';
import 'package:iteso_parking/place_finder/place_finder_page.dart';
import 'package:iteso_parking/problem/problem_page.dart';
import 'package:iteso_parking/profile/profile_page.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Find My Spot ITESO'),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(
                'Busca un Lugar de Estacionamiento!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<PlaceBloc>(context).add(FindPlaceEvent());
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PlaceFinderPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 222, 218, 218),
                    minimumSize: Size(200, 200),
                    shape: CircleBorder(),
                  ),
                  child: Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_tIKIYX.json',
                    width: 190,
                    height: 190,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Lottie.network(
                              'https://assets8.lottiefiles.com/packages/lf20_zmKJtL.json',
                              width: 50,
                            ),
                            Text('Marcar Salida'),
                            Lottie.network(
                              'https://assets8.lottiefiles.com/packages/lf20_zmKJtL.json',
                              width: 50,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _showMyDialogDisponibilidad(context, 55.0);
                        },
                        child: Row(
                          children: [
                            // Lottie.network(
                            //   'https://assets10.lottiefiles.com/packages/lf20_zN464F.json',
                            //   width: 50,
                            // ),
                            Text('Disponibilidad de Lugares'),
                            Lottie.network(
                              'https://assets10.lottiefiles.com/packages/lf20_zN464F.json',
                              width: 50,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProblemPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Lottie.network(
                              'https://assets9.lottiefiles.com/private_files/lf30_6y4i96n3.json',
                              width: 50,
                            ),
                            Text('Reportar Problema'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showMyDialogDisponibilidad(context, percentage) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Disponibilidad de lugares.'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                  'En este momento el estacionamiento del ITESO se encuentra a un ${percentage}% de su capacidad total. '),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                alignment: Alignment.center,
                child: LinearPercentIndicator(
                  //leaner progress bar
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 30.0,
                  percent: percentage / 100,
                  center: Text(
                    percentage.toString() + "%",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  // linearStrokeCap: LinearStrokeCap.roundAll,

                  progressColor: percentage < 80
                      ? Colors.green
                      : percentage < 100
                          ? Colors.yellow
                          : Colors.red,
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok!'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
