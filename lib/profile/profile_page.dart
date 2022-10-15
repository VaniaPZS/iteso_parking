import 'package:flutter/material.dart';
import 'package:iteso_parking/profile/Car.dart';
import 'package:iteso_parking/profile/car_button.dart';
import 'package:iteso_parking/profile/car_registration_page.dart';
import 'package:iteso_parking/home_page.dart';

void main() => runApp(const ProfilePage());

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> carsList = [];
    carsList.add(
      CarButton(car: myCar),
    );
    carsList.add(
      CarButton(car: myCar),
    );
    carsList.add(
      CarButton(car: myCar),
    );
    carsList.add(
      NewCarButton(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Nombre: Juan Perez',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey[100],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Expediente: IS234567',
                          style: TextStyle(
                            color: Colors.grey[100],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Seleccione el auto con el que ingresaras o registre alguno!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: 400,
                height: 300,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: carsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: carsList[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewCarButton extends StatelessWidget {
  const NewCarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CarRegistrationPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
