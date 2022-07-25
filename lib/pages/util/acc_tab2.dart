// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
   AccountTab2({ Key? key }) : super(key: key);
   final List<String> userPost = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
      gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3),
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.green[300],
          ),
        );
      },
    );
  }
}