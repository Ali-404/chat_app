import 'package:chat_app/components/message.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
        elevation: 6,
        shadowColor: Colors.indigo[900],
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.indigo
        ),
        titleSpacing: 0,
        title:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
              
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                fit: BoxFit.cover,
                width: 40,
                height: 40,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null){
                    return const CircularProgressIndicator.adaptive(backgroundColor: Colors.blue,);
                  }
                  return child;
                },),
              ),

             const Padding(
               padding:  EdgeInsets.symmetric(horizontal: 12.0),
               child:  Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ali"),
                  Text("online", style: TextStyle(fontSize: 12),),
                ],

              ),

             ),]
        ),
        // img
         
      ),


      // body

      body: Column(

        children: [
          Expanded(child:Container(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: MessagesContainer(),),
          ),
          
          
          
          // input
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration:const BoxDecoration(
              color: Colors.indigo,
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo,
                  blurRadius: 8,
                  spreadRadius: 2  
                )
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
              )
            
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions,color: Colors.white,)),
                const Flexible(child: TextField(
                  cursorColor: Colors.indigo,
                  decoration: InputDecoration(
                    hintText: "Type a message ..",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    iconColor: Colors.indigo
                  ),
                )),
                IconButton(onPressed: (){}, icon: const Icon(Icons.send, color: Colors.white,))
              ],
            ),
          ),
        ],

      ),
      
    );
  }
}

class MessagesContainer extends StatelessWidget {
  MessagesContainer({
    super.key,
  });


  final ScrollController scrollListController = ScrollController() ;


  @override
  Widget build(BuildContext context) {
    

    return ListView(
      controller: scrollListController,
      dragStartBehavior: DragStartBehavior.down,
      reverse: true,
      children: [
        // load messages
        MessageWidget(messageType: "system",),
        MessageWidget(messageType: "client",),
        MessageWidget(messageType: "client",),
        MessageWidget(messageType: "server",),
    ],
    
      
  );
  }


}