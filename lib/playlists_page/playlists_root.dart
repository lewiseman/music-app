import 'package:flutter/material.dart';

class PlaylistsPage extends StatefulWidget {
  @override
  _PlaylistsPageState createState() => _PlaylistsPageState();
}

class _PlaylistsPageState extends State<PlaylistsPage> {
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
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, index) {
            return ListTile(
              tileColor: Colors.grey[900],
              leading: IconButton(
                icon: Icon(
                  Icons.playlist_play,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              title: Text(
                "Favorites",
                style: TextStyle(color: Colors.white),
              ),
              subtitle:
                  Text("48 Songs  .  01:06:13", style: TextStyle(color: Colors.white)),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            );
          }),
        )
      ],
    );
  }
}
