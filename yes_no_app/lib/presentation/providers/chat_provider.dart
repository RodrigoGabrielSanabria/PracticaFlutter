import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entitie/message.dart';


class ChatProvider extends ChangeNotifier{

final ScrollController chatScrollController = ScrollController();
final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

List<Message>messageList =[

Message(text: 'Hola amor!', fromWho: FromWho.me),
Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me),

];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;   //evita que se manden mensajes vacios

   final newMessage = Message(text: text, fromWho: FromWho.me);
   messageList.add(newMessage);

    if (text.endsWith('?')){
       herReply();  //si el mensaje es una pregunta, se responde automaticamente con una respuesta aleatoria
    }
   notifyListeners();
   
   moveScrollToBottom();
   
 }

 Future <void> herReply() async{
  final herMessage = await getYesNoAnswer.getAnswer();  //El mensaje se lanza cuando detencta que el mensaje recibido es una pregunta
  messageList.add(herMessage);
  notifyListeners();

   moveScrollToBottom();
 }

 Future <void> moveScrollToBottom() async{

    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
     chatScrollController.position.maxScrollExtent + chatScrollController.position.maxScrollExtent*0.3,           //posicion
     duration: const Duration(milliseconds: 300),          //duracion de la animacion
      curve: Curves.easeOut
    );       //tipo de animacion

  }

}