import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'dart:io';

class SongsPage extends StatefulWidget {
  @override
  _SongsPageState createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> {
  final FlutterAudioQuery audioQuery = FlutterAudioQuery();
  List<SongInfo> songs = [];

  void initState() {
    super.initState();
    getTracks();
  }

  void getTracks() async {
    songs = await audioQuery.getSongs();
    List<SongInfo> cleanSongs = [];
    songs.forEach((element) {
      var duration = element.duration != null ? element.duration : 1;
      if ((element.title.length > 1)) {
        if (int.parse(duration) > 10000) {
          cleanSongs.add(element);
          print(int.parse(duration));
        }
      }
    });

    setState(() {
      songs = cleanSongs;
    });
  }

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
              leading: songs[index].albumArtwork == null
                  ? Image.asset("assets/images/grid_images/grid_four.jpg")
                  : Image.file(File(songs[index].albumArtwork)),
              title: RichText(
                text: TextSpan(
                  text: "${songs[index].title}",
                  style: TextStyle(color: Colors.white),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: RichText(
                text: TextSpan(
                    text:
                        "${songs[index].artist}  ${(int.parse(songs[index].duration) / 1000) / 60}",
                    style: TextStyle(color: Colors.white)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            );
          }, childCount: songs.length),
        )
      ],
    );
  }
}
