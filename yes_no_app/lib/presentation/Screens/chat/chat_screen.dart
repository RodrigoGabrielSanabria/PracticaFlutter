import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entitie/message.dart';

import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';



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
      body: _ChatView(),
    );

  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

   final chatProvider = context.watch<ChatProvider>();

    return SafeArea(  //se usa para que no interfiera con los gestos del telefono
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10), //agrega un borde para que el contenido no este pegado a los bordes
        child: Column(
          children: [//Expanded: Abarca una parte de la pantalla  para mostrar el contenido distribuido
            Expanded(child: ListView.builder(
              controller: chatProvider.chatScrollController, 
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                 final message =chatProvider.messageList[index]; 
                 return (message.fromWho == FromWho.hers) //retorna los mensajes de el o ella
                 ? const HerMessageBubble()
                 :  MyMessageBubble(message: message);  
              },)),
           
           /// Caja de texto
           MessageFieldBox(
            onValue: chatProvider.sendMessage,
           ), 
          ],
        ),
      ),
    );
  }
}