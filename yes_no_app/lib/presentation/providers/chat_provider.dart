import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entitie/message.dart';


class ChatProvider extends ChangeNotifier{


List<Message>messageList =[

Message(text: 'Hola amor!', fromWho: FromWho.me),
Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me),

] ;

Future<void> sendMessage(String text) async {

      //Implementar metodo
}



}