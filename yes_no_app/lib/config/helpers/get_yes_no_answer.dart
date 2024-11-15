import 'package:dio/dio.dart';
import 'package:yes_no_app/config/infrastructure/models/yes_no_model.dart';
import 'package:yes_no_app/domain/entitie/message.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future <Message> getAnswer() async {

    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YeNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();

    
  }
}