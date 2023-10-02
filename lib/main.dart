import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
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
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0), // Añadido padding
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD21EE2), Color(0xFF960FD4)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _MenuOption("Designer", isSelected: true),
                _MenuOption(
                  "Category",
                  topPadding: 8.0,
                ),
                _MenuOption(
                  "Attention",
                  topPadding: 8.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return _CardItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuOption extends StatelessWidget {
  final String title;
  final bool isSelected;
  final double topPadding; // Nuevo parámetro

  _MenuOption(this.title,
      {this.isSelected = false, this.topPadding = 0}); // Valor por defecto

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: topPadding), // Uso del parámetro
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: isSelected ? 23 : 16,
                color: isSelected ? Colors.white : Colors.white70,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.4,
              ),
            ),
            if (isSelected)
              Container(
                width: 94,
                height: 3.2,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
        shadowColor: Color.fromARGB(255, 30, 87, 145).withOpacity(0.7),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 190, 253),
                Color.fromARGB(255, 139, 130, 221)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 12,
                left: 12,
                child: CircleAvatar(
                  backgroundImage: AssetImage("path_to_image"),
                  radius: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Designer Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Title",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _NumberLabel("2342", "Popularity"),
                          SizedBox(width: 18),
                          _NumberLabel("4736", "Likes"),
                          SizedBox(width: 18),
                          _NumberLabel("136", "Followed"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 30,
                right: 12,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle, color: Colors.white, size: 5),
                        SizedBox(width: 3),
                        Icon(Icons.circle, color: Colors.white, size: 5),
                        SizedBox(width: 3),
                        Icon(Icons.circle, color: Colors.white, size: 5),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "5",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "Ranking",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -3,
                bottom: -38,
                right: -5,
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(140),
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

  _NumberLabel(this.number, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
