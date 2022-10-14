import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find My Spot ITESO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
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
                        onPressed: () {},
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Lottie.network(
                              'https://assets9.lottiefiles.com/private_files/lf30_6y4i96n3.json',
                              width: 50,
                            ),
                            Text('Reportar Problema'),
                            // Lottie.network(
                            //   'https://assets9.lottiefiles.com/private_files/lf30_6y4i96n3.json',
                            //   width: 50,
                            // ),
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
