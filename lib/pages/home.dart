// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/util/stories.dart';
import 'package:instagram_ui_clone/pages/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['ghous','osamaghazi','masawood','jamshid','qasim','sajjad'];
  final List storyPic = ['lib/images/pic1.jpg','lib/images/pic2.jpg','lib/images/pic3.jpg','lib/images/pic4.jpg','lib/images/pic5.jpg','lib/images/pic6.jpg'];
  final List postPic = ['lib/images/t1.jpg','lib/images/t2.jpg','lib/images/t3.jpg','lib/images/t4.jpg','lib/images/t5.jpg','lib/images/t7.jpg'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation : 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
              
            ],
          ),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // STORIES
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context,index){
                return Stories(
                  username: people[index].toString(),
                  storyImage: storyPic[index],
                );
              }
            )
          ),

          // POSTS

          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context,index){
                return UserPost(
                  userName: people[index],
                  userImage: storyPic[index],
                  postImage: postPic[index],
                );
          
              }
            ),
          ),
        ],
      ),
    );
  }
}