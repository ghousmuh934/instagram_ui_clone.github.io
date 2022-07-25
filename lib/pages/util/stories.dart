// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

  final String username;
  final storyImage;
  const Stories({Key? key,
  required this.username,
  required this.storyImage
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage : AssetImage(storyImage,),
                
          ),
          
        ),
        SizedBox(height: 10,),

        Text(username,)
      ],
    );
  }
}
