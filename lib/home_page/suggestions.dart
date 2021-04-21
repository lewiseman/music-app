import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Suggestions extends StatefulWidget {
  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: StaggeredGridView.count(
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              shrinkWrap: true,
              crossAxisCount: 5,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              staggeredTiles: [
                StaggeredTile.extent(5, 30),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
              ],
              children: [
                Text(
                  "Suggestions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
                Card(
                  color: Colors.purple[100],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "New\nMusic\nMix",
                      style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_two.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_three.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_four.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_five.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_six.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_seven.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_eight.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Ink.image(
                    image: AssetImage(
                      "assets/images/grid_images/grid_nine.jpg",
                    ),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
