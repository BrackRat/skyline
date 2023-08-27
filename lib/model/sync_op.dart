import 'package:dio/dio.dart';

final dio = Dio();

Future<Map<String, dynamic>> getSyncStatus() async {
  final response =
      await dio.get('https://skyline-api.brackrat.com/sync_status');

  return response.data;
}
