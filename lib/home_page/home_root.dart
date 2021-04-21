import 'package:flutter/material.dart';
import 'package:music_app/home_page/categories.dart';
import 'package:music_app/home_page/music_acc.dart';
import 'package:music_app/home_page/sections.dart';
import 'package:music_app/home_page/suggestions.dart';

class MusicHome extends StatelessWidget {
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
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              children: [
              TextSpan(text: "Lewis' ",style: TextStyle(color: Colors.purple)),
              TextSpan(text: "App")
            ]),
          ),
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
          floating: true,
        ),
        SliverToBoxAdapter(
          child: HomeAccount(),
        ),
        SliverToBoxAdapter(
          child: Categories(),
        ),
        SliverToBoxAdapter(
          child: Suggestions(),
        ),
        SliverToBoxAdapter(
          child: Sections(),
        ),
        SliverToBoxAdapter(
          child: Sections(),
        ),
        SliverToBoxAdapter(
          child: Sections(),
        ),
        SliverToBoxAdapter(
          child: Sections(),
        ),
      ],
    );
  }
}
