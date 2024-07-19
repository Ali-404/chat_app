import 'package:chat_app/pages/chat_main.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Home'),
        
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(side: BorderSide.none,borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        
        
          elevation: 6,
          actions: [
            IconButton(onPressed: (){},icon: const Icon(Icons.search),),
          ],

          bottom: TabBar(
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            tabs:const [
              Tab(icon: Icon(Icons.chat),text: "Chat",),
              Tab(icon: Icon(Icons.person),text:"Profile"),
              Tab(icon: Icon(Icons.settings),text: "Settings",),
            ]
          ),
        ),
      
      
        body: const TabBarView(
          
          children: [
            Center(child: ChatMain(),),
            Center(child: Text('Home Page'),),
            Center(child: Text('Home Page'),),
          ],
        ),
      
        
      ),
    );
  }
}