import 'package:dio/dio.dart';
import 'package:weather_app_hackathon/weatherModel.dart';

class WeatherService {
  //4I8DBYg8ETDeJrEZwwa0Pl:3Ht4IwjahVH2H75O2ecEDa
  Future<List<WeatherModel?>> getWeatherData() async {
    String url =
        "https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=ankara";
    Map<String, dynamic> headers = {
      'content-type': "application/json",
      'authorization': "apikey 4I8DBYg8ETDeJrEZwwa0Pl:3Ht4IwjahVH2H75O2ecEDa"
    };

    final dio = Dio();
    final response = await dio.get(url, options: Options(headers: headers));

    if (response.statusCode != 200) {
      return Future.error("Bir sorun oluştu... ${response.statusCode}");
    }

    List list = response.data['result'];
    List<WeatherModel> weatherList =
        list.map((e) => WeatherModel.fromJson(e)).toList();

    return weatherList;
  }
}
