import 'package:flutter/material.dart';

class HomeAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 60.0,
              ),
              color: Colors.purple,
              onPressed: () {}),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome,",
                  style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    textAlign: TextAlign.left,
                ),
                Text(
                  "lewisemann",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
