import 'package:flutter/material.dart';

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  List all = [
    'aaaaaaa',
    'baaaaaa',
    'caaaa',
    'daaaaa',
    'caaaa',
    'caaaa',
    'caaaa',
    'caaaa',
    'caaaa'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                "Top Artists",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.purple,
                    size: 30,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
        Container(
          height: 160,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: all.length,
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage:
                          AssetImage("assets/images/grid_images/grid_six.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Olakira",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
