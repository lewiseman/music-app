import 'package:flutter/material.dart';

class AlbumsPage extends StatefulWidget {
  @override
  _AlbumsPageState createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ScrollPhysics(parent: BouncingScrollPhysics()),
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.grey[900],
          leading: IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          centerTitle: true,
          title: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: "Lewis' ", style: TextStyle(color: Colors.purple)),
                  TextSpan(text: "App")
                ]),
          ),
          actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
          floating: true,
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((BuildContext context, index) {
            return Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/grid_images/grid_seven.jpg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      "50 Years",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                  Text(
                    "Kenny Rogers",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          }),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        )
      ],
    );
  }
}
