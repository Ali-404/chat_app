
import 'package:chat_app/pages/conversation.dart';
import 'package:chat_app/pages/home.dart';
import 'package:chat_app/providers/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider())
    ],child: const App(),),
  );
}



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      // home: const Home(),
      home: const Conversation(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}