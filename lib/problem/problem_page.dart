import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProblemPage extends StatelessWidget {
  const ProblemPage({super.key});

  @override
  Widget build(BuildContext context) {
    var descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Denunciar Problemas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 117, 115, 115)),
                minimumSize: MaterialStateProperty.all(
                  Size(100.0, 80.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Tomar foto del problema',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Lottie.network(
                    'https://assets5.lottiefiles.com/temp/lf20_YmEKRX.json',
                    width: 80,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: Text(
                      'Describa el problema:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ingresa una descripcion breve',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: Text(
                      'Seleccione el lugar del problema',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Image.network(
                      'https://d500.epimg.net/cincodias/imagenes/2015/10/29/lifestyle/1446136907_063470_1446137018_noticia_normal.jpg'),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 10,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(100.0, 80.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Enviar denuncia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Lottie.network(
                    'https://assets7.lottiefiles.com/private_files/lf30_veav8nkj.json',
                    width: 80,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
