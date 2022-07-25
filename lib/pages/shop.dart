// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            Row(
              children: [
                Icon(Icons.calendar_month),
                SizedBox(width: 10,),
                Icon(Icons.menu),

              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
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

          Expanded(child: ShopGrid())
          
        ],
      ),
    );
  }
}