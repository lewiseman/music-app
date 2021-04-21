import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.lightBlue[200],
                radius: 25,
                child: IconButton(
                    icon: Icon(
                      Icons.history,
                      size: 30.0,
                    ),
                    color: Colors.lightBlue[900],
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "History",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              )
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.redAccent[100],
                radius: 25,
                child: IconButton(
                    icon: Icon(
                      Icons.add_to_photos_rounded,
                      size: 30.0,
                    ),
                    color: Colors.redAccent[700],
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Last added",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              )
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.purple[200],
                radius: 25,
                child: IconButton(
                    icon: Icon(
                      Icons.graphic_eq,
                      size: 30.0,
                    ),
                    color: Colors.purple[900],
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Most played",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              )
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green[300],
                radius: 25,
                child: IconButton(
                    icon: Icon(
                      Icons.shuffle,
                      size: 30.0,
                    ),
                    color: Colors.green[900],
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Shuffle",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
