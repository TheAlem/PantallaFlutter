import 'package:flutter/material.dart';
import 'menu_option.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Map<String, dynamic>> cardData = [
    {
      'designerName': 'David Borg',
      'title': 'Title: Flying Wings',
      'popularity': '2342',
      'likes': '4736',
      'followed': '136',
      'ranking': '1',
      'fecha': '05-10-2023',
      'fechatext': 'Fecha',
      'image': 'assets/images/Perfil1.jpeg',
      'firstColor': [255, 195, 190, 253],
      'secondColor': [255, 139, 130, 221],
    },
    {
      'designerName': 'Lucy',
      'title': 'Growing up trouble',
      'popularity': '2342',
      'likes': '4736',
      'followed': '136',
      'ranking': '2',
      'fecha': '05-10-2023',
      'fechatext': 'Fecha',
      'image': 'assets/images/Perfil2.jpg',
      'firstColor': [255, 235, 172, 101],
      'secondColor': [255, 226, 154, 88],
    },
    {
      'designerName': 'Jerry Cool West',
      'title': "Title: Sculptor's diary",
      'popularity': '2342',
      'likes': '4736',
      'followed': '136',
      'ranking': '3',
      'fecha': '05-10-2023',
      'fechatext': 'Fecha',
      'image': 'assets/images/Perfil3.jpeg',
      'firstColor': [255, 227, 99, 142],
      'secondColor': [255, 225, 85, 113],
    },
    {
      'designerName': 'Pablo Toledo',
      'title': 'Title: Illustration of little',
      'popularity': '2342',
      'likes': '4736',
      'followed': '136',
      'ranking': '4',
      'fecha': '05-10-2023',
      'fechatext': 'Fecha',
      'image': 'assets/images/profile_picture_004.jpg',
      'firstColor': [255, 196, 114, 230],
      'secondColor': [255, 149, 121, 234],
    },
    {
      'designerName': 'David Borg',
      'title': 'Title: Flying Wings',
      'popularity': '2342',
      'likes': '4736',
      'followed': '136',
      'ranking': '1',
      'image': 'assets/images/profile_picture_005.jpg',
      'fecha': '05-10-2023',
      'fechatext': 'Fecha',
      'firstColor': [255, 102, 221, 198],
      'secondColor': [255, 100, 216, 177],
    },
    {
      'designerName': 'Jerry Cool West',
      'title': "Title: Sculptor's diary",
      'popularity': '2342',
      'likes': '4736',
      'followed': '136',
      'ranking': '3',
      'fecha': '05-10-2023',
      'fechatext': 'Fecha',
      'image': 'assets/images/profile_picture_006.jpg',
      'firstColor': [255, 227, 99, 142],
      'secondColor': [255, 225, 85, 113],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD21EE2), Color(0xFF960FD4)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFD21EE2), Color(0xFF960FD4)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MenuOption("Designer", isSelected: true),
                MenuOption(
                  "Category",
                  topPadding: 8.0,
                ),
                MenuOption(
                  "Attention",
                  topPadding: 8.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount:
                  cardData.length, // Utiliza la cantidad de datos en la lista
              itemBuilder: (context, index) {
                final data =
                    cardData[index]; // Obtiene los datos para este índice
                return CardItem(
                  designerName: data['designerName'] ?? '',
                  title: data['title'] ?? '',
                  popularity: data['popularity'] ?? '',
                  likes: data['likes'] ?? '',
                  followed: data['followed'] ?? '',
                  ranking: data['ranking'] ?? '',
                  image: data['image'] ?? '',
                  fecha: data['fecha'] ?? '',
                  fechatext: data['fechatext'] ?? '',
                  firstColor: data['firstColor'],
                  secondColor: data['secondColor'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String designerName;
  final String title;
  final String popularity;
  final String likes;
  final String followed;
  final String ranking;
  final String image;
  final String fechatext;
  final String fecha;
  final List<int> firstColor;
  final List<int> secondColor;

  const CardItem({
    super.key,
    required this.designerName,
    required this.title,
    required this.popularity,
    required this.likes,
    required this.followed,
    required this.ranking,
    required this.image,
    required this.fecha,
    required this.fechatext,
    required this.firstColor,
    required this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 3,
        shadowColor: const Color.fromARGB(255, 30, 87, 145).withOpacity(0.7),
        child: Container(
          height: 190,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(
                    firstColor[0], firstColor[1], firstColor[2], firstColor[3]),
                Color.fromARGB(secondColor[0], secondColor[1], secondColor[2],
                    secondColor[3]),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              // Positioned for the image in the center
              Positioned(
                top: 10,
                left: (MediaQuery.of(context).size.width - 60) / 2,
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 30,
                ),
              ),
              // Padding for the designer name and descriptions
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      designerName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned for the ranking
              const  Positioned(
                top: 10,
                right: 300,
                child: Column(
                  children: [
                      Row(
                      children: [
                        Icon(Icons.add_call, color: Colors.white, size: 40),
                      ],
                    ),
                  ],
                ),
              ),


              Positioned(
                top: 10,
                right: 28,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.more_horiz, color: Colors.white, size: 40),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      ranking,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    const Text(
                      "Ranking",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              // Positioned for the number labels
              Positioned(
                bottom: 40,
                left: (MediaQuery.of(context).size.width - 155) / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _NumberLabel(popularity, "Popularity"),
                    const SizedBox(width: 12),
                    _NumberLabel(likes, "Likes"),
                    const SizedBox(width: 12),
                    _NumberLabel(followed, "Followed"),
                  ],
                ),
              ),
              Positioned(
                bottom: -5,
                left: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _NumberLabel(fechatext,''),
                    const SizedBox(width: 205),
                    _NumberLabel(fecha,''),
                  ],
                ),
              ),
              // Positioned for the special visual effect
              Positioned(
                top: -3,
                bottom: -30,
                right: -5,
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(180),
                      bottomLeft: Radius.circular(100),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberLabel extends StatelessWidget {
  final String number;
  final String label;

  const _NumberLabel(this.number, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
