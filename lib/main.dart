import 'package:flutter/material.dart';
import 'package:music_app/albums_page/albums_root.dart';
import 'package:music_app/artists_page/artists_root.dart';
import 'package:music_app/home_page/home_root.dart';
import 'package:music_app/playlists_page/playlists_root.dart';
import 'package:music_app/songs_page/songs_root.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Root(),
    );
  }
}

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MusicHome(),
    SongsPage(),
    AlbumsPage(),
    ArtistsPage(),
    PlaylistsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.face,
              ),
              label: 'For you'),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: 'Songs'),
          BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Albums'),
          BottomNavigationBarItem(
              icon: Icon(Icons.art_track), label: 'Artists'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play), label: 'Playlists'),
        ],
        fixedColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[900],
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
