// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[200],
            
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8,),
                Text('Search')
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid()
    );
  }
}