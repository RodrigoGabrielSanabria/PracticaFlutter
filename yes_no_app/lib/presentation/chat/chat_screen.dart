import 'package:flutter/material.dart';



class ChatScreen extends StatelessWidget {

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://media.gq.com.mx/photos/5ef2447d8f739bf973bc8588/16:9/w_2560%2Cc_limit/megan-fox-auto-.jpg') ,
          ),
        ),
        title: const Text('Mi amor ❤️'),
        centerTitle: false,
      ),
    );
  }
}