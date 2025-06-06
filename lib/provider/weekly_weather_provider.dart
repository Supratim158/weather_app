import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/services/api_helper.dart';

final weeklyWeatherProvider = FutureProvider.autoDispose((ref){
  return ApiHelper.getWeeklyForecast();
});