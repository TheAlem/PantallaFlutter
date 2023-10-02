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
            padding: EdgeInsets.symmetric(horizontal: 10),
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
                _MenuOption("Category"),
                _MenuOption("Attention"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
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

  _MenuOption(this.title, {this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: isSelected ? 20 : 16,
              color: isSelected ? Colors.white : Colors.white70,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5, // Ajusta el espacio entre las letras
            ),
          ),
          if (isSelected)
            Container(
              width: 60,
              height: 2,
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Color(0xFFD6E4FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      shadowColor: Colors.blue[700]!.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("path_to_image"),
                  radius: 24,
                ),
                Row(
                  children: [
                    Icon(Icons.circle, color: Colors.white, size: 5),
                    SizedBox(width: 3),
                    Icon(Icons.circle, color: Colors.white, size: 5),
                    SizedBox(width: 3),
                    Icon(Icons.circle, color: Colors.white, size: 5),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Designer Name",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Title",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _NumberLabel("2342", "Popularity"),
                _NumberLabel("4736", "Likes"),
                _NumberLabel("136", "Followed"),
              ],
            ),
            SizedBox(height: 12),
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
