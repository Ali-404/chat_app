import 'package:chat_app/pages/conversation.dart';
import 'package:flutter/material.dart';

class ChatMain extends StatefulWidget {
  const ChatMain({super.key});

  @override
  State<ChatMain> createState() => _ChatMainState();
}

class _ChatMainState extends State<ChatMain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView(
        children:const [
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
        ],
      ),
    );
  }
}




// contact tile
class ContactTile extends StatelessWidget {
  const ContactTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        
        // Go to conversation
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Conversation();
          }));

        },


        splashColor: Colors.indigo[50],
        title:const Text("tafaf"),
        // Profile Icon
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress != null){
              return const CircularProgressIndicator.adaptive(backgroundColor: Colors.blue,);
            }
            return child;
          },),
        ),
      
        subtitle:const Text("cc"),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text("test", style: TextStyle(color: Colors.indigo),),
            Badge.count(count: 1,backgroundColor: Colors.indigo,),
          ],
        )
      ),
    );
  }
}