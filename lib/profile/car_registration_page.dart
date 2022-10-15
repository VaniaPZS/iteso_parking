import 'package:flutter/material.dart';
import 'package:iteso_parking/profile/profile_page.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const CarRegistrationPage());

class CarRegistrationPage extends StatelessWidget {
  const CarRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var manufacturerController = TextEditingController();
    var modelController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre un auto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingrese el manufacturador:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              controller: manufacturerController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ej: Ford, Toyota, Kia...',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ingrese el modelo:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              controller: manufacturerController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ej: Mustang, Jetta, Forte...',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ingrese la capacidad:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              controller: manufacturerController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Ej: 2 asientos'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ingrese las placas:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              controller: manufacturerController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Ej: JSH123432'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Suba una foto del auto donde se vean las placas:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 117, 115, 115)),
                minimumSize: MaterialStateProperty.all(
                  Size(80.0, 50.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Tomar foto del auto',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Lottie.network(
                    'https://assets5.lottiefiles.com/temp/lf20_YmEKRX.json',
                    width: 60,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Guardar',
                    style: TextStyle(fontSize: 18),
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
