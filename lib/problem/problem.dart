class Problem {
  String section;
  String places;
  String description;
  String imageUrl;
  String userUid;
  bool isSolved;

  Problem({
    required this.section,
    required this.places,
    required this.description,
    required this.imageUrl,
    required this.userUid,
    required this.isSolved,
  });
}

// Problem dummyProblem = Problem(
//     section: 'B',
//     places: '23,24,25',
//     description: 'alguien esta estacionado en mi lugar',
//     imageUrl:
//         'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
//     isSolved: false);
