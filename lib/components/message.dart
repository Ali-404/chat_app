import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  
  final String messageType;

  final Map<String,Alignment> alignments = {
    "client":Alignment.centerRight,
    "server": Alignment.centerLeft,
    "system":Alignment.center
  };

  final Map<String, List<Color>> colors = {
    "client": [Colors.indigo[200]!, Colors.black],
    "server": [Colors.indigo[600]!, Colors.white],
    "system": [Colors.transparent, Colors.black],
  };

  final Map<String, BorderRadius> borderRadius = {
    "server":const BorderRadius.only(
      topLeft: Radius.circular(0.0),
      bottomLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
      bottomRight: Radius.circular(10.0),
    ),
    "client":const BorderRadius.only(
      topLeft: Radius.circular(10.0),
      bottomLeft: Radius.circular(10.0),
      topRight: Radius.circular(0.0),
      bottomRight: Radius.circular(10.0),
    ),
    "system":const BorderRadius.all(Radius.zero),
  };


  MessageWidget({super.key,this.messageType = "client"});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Align(
        
        alignment: alignments[messageType]!,


        child: Container(
          constraints: BoxConstraints(
             maxWidth: MediaQuery.of(context).size.width * 0.8,
            minWidth: MediaQuery.of(context).size.width * 0.2,
          ),
          padding: const EdgeInsets.all(10),
          
          decoration: BoxDecoration(
            color: colors[messageType]![0],
            borderRadius:borderRadius[messageType],  
          ),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              
            children: [
              Text("Hello world", style: TextStyle(fontSize: 20, color: colors[messageType]![1]),),
                
            if (messageType != "system")
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (messageType != "system")
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text("12:15 AM", style: 
                    TextStyle(fontSize: 12, color: colors[messageType]![1]),),
                  ),
                  const Icon(Icons.remove_red_eye,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}