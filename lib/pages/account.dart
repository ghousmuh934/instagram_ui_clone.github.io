// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/util/acc_tab1.dart';
import 'package:instagram_ui_clone/pages/util/acc_tab2.dart';
import 'package:instagram_ui_clone/pages/util/acc_tab3.dart';
import 'package:instagram_ui_clone/pages/util/acc_tab4.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // profile pic
                CircleAvatar(
                  radius: 45,
                  backgroundImage : AssetImage('lib/images/pic1.jpg',),
                      
                ),
        
                Column(
                  children: [
                    Text('230',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('Posts'),
                  ],
                ),
                Column(
                  children: [
                    Text('2330',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('Followers'),
                  ],
                ),
                Column(
                  children: [
                    Text('50',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('Following'),
                  ],
                )
                  ],
                ),
              ),
    
              // name and bio
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ghous',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:2.0),
                      child: Text('Software Engineer'),
                    ),
                    Text('gmmomit.blogspot.com/', style: TextStyle(color: Colors.blue),),
                  ],
                ),
              ),
    
              // Edit buttons 
              Padding(
                padding: const EdgeInsets.only(right:14.0,left: 14.0),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8)
                  ),
                  
                  child: Center(
                    child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
              ),
    
              // 3 buttons
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text('Ad Tools',style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ),
                    ),
                 
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text('Insignts',style: TextStyle(fontWeight: FontWeight.bold),)
                          ),
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text('Contact',style: TextStyle(fontWeight: FontWeight.bold),)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), 

              // tab bar

              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call)
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),

              ]),

              // tabbar view

              Expanded(
                child: TabBarView(children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4()
                ]),
              )
    
            ],
          ),
        )
      ),
    );
  }
}