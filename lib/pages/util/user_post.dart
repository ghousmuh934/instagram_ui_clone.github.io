// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {

  final String userName;
  final userImage;
  final postImage;
  const UserPost({Key? key,
  required this.userName,
  required this.userImage,
  required this.postImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // profile pic
                    CircleAvatar(
                    
                      backgroundImage : AssetImage(userImage,),
                          
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    // profile name
                    Text(
                      userName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              // menu icon
              Icon(Icons.menu)
            ],
          ),
        ),
        

        // post
        Container(
          height: 280,
          
          child: Image.asset(postImage,
          
    
          ),
        ),

        // icons

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.favorite),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12.0),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ]),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        // Like by
        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text('ghous',style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              Text(' and '),
              Text('other',style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),
        
        // caption
        Padding(
          padding: const EdgeInsets.only(left:16.0,top: 8),
          child: RichText(
            text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(text:userName,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
          TextSpan(text: ' very nice pic, i love it very nice pic, '),  
          ]
            ),
          )
        ),

        //comment
      ],
    );
  }
}
