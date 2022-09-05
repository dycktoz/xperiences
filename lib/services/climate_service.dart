import 'package:http/http.dart' as http;
import 'package:xperiences/models/climate_response.dart';

class ClimateService {
  final client = http.Client();
  Future<ClimateResponse> getCurrentClimate(
      {required String lat, required String lon}) async {
    final uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=2de02cc8027d14abfe5a051b3ac62569&units=metric');
    final response = await client.get(uri);

    return ClimateResponse.fromJson(response.body);
  }
}
