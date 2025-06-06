import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/services/api_helper.dart';

final hourlyWeatherProvider = FutureProvider.autoDispose((ref){
  return ApiHelper.getHourlyForecast();
});