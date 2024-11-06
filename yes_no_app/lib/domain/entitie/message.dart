
enum FromWho {mine, her}    //Enum para saber de quien es el mensaje enviado

class Message {
  final String text;
  final String? imageUrl;     //la imagen puede o no ser enviada
  final FromWho fromWho;

  Message({
      required this.text,
      this.imageUrl,
      required this.fromWho
    });
}