import 'package:dio/dio.dart';

final dio = Dio();

Future<String> getOpenAiAnay() async {
  final response =
      await dio.get('https://skyline-api.brackrat.com/openai_anay');
  return response.data;
}
