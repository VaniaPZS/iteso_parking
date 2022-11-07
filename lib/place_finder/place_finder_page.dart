import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteso_parking/place_finder/place.dart';
import 'package:iteso_parking/problem/problem_page.dart';
import 'package:lottie/lottie.dart';

import '../problem/problem_button.dart';
import '../profile/profile_page.dart';
import 'bloc/place_bloc.dart';

class PlaceFinderPage extends StatelessWidget {
  const PlaceFinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PlaceBloc>(context).add(FindPlaceEvent());
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
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<PlaceBloc, PlaceState>(
          listener: (context, state) {
            if (state is FindPlaceErrorState) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content:
                        Text('Error al buscar lugar, intentelo mas tarde...'),
                  ),
                );
            }
          },
          builder: (context, state) {
            if (state is FindPlaceLoadingState) {
              return Text('Loading');
            } else if (state is FindPlaceSuccessState) {
              var asignedPlace = context.watch<PlaceBloc>().asignedPlace;
              return getPlaceFinderData(context, asignedPlace!);
            } else {
              return Text('else');
            }
          },
        ),
      ),
    );
  }

  Widget getPlaceFinderData(BuildContext context, Place asignedPlace) {
    // final Place asignedPlace = dummyPlace;
    return Column(
      children: [
        PlaceInfo(context, asignedPlace),
        SizedBox(
          height: 40,
        ),
        PlaceMap(asignedPlace),
        Expanded(
          child: SizedBox(),
        ),
        ProblemButton(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget PlaceInfo(BuildContext context, Place asignedPlace) {
    return Container(
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
                  'Tu lugar es el: ${asignedPlace.number}',
                  style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 24,
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
                  'y se encuentra en la sección: ${asignedPlace.section}',
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
    );
  }

  Widget PlaceMap(Place asignedPlace) {
    return Container(
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
              'Como llegar hasta tu lugar?',
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
    );
  }
}
