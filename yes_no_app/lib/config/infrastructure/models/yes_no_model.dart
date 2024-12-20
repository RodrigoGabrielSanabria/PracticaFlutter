import 'package:yes_no_app/domain/entitie/message.dart';

class YeNoModel {

    final String answer;
    final bool forced;
    final String image;

    YeNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YeNoModel.fromJsonMap(Map<String, dynamic> json) => YeNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

  Message toMessageEntity()=> Message(
    text: answer == 'yes' ? "Si" : "No",
    fromWho: FromWho.hers,
    imageUrl: image
  );
}