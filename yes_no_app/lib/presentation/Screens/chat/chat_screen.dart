import 'package:flutter/material.dart';
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
    return SafeArea(  //se usa para que no interfiera con los gestos del telefono
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10), //agrega un borde para que el contenido no este pegado a los bordes
        child: Column(
          children: [//Expanded: Abarca una parte de la pantalla  para mostrar el contenido distribuido
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                  return (index %  2 == 0)        //alterna el lado que se muestra el chat dependiendo quien escribe
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
              },)),
           
           /// Caja de texto
           const MessageFielBox(), 
          ],
        ),
      ),
    );
  }
}