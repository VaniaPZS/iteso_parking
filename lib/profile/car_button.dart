import 'package:flutter/material.dart';
import 'package:iteso_parking/profile/Car.dart';

class CarButton extends StatelessWidget {
  final Car car;
  const CarButton({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${car.manufacturer} ${car.model}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              '${car.plates}',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
