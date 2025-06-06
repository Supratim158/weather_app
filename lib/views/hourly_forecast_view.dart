import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/extensions/int.dart';
import 'package:weather_app/provider/hourly_weather_Provider.dart';

import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import '../utils/get_weather_icons.dart';

class HourlyForecastWeather extends ConsumerWidget {
  const HourlyForecastWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final hourlyWeatherData = ref.watch(hourlyWeatherProvider);

    return hourlyWeatherData.when(
        data: (hourlyWeather){
          return SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: hourlyWeather.cnt,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  final forecast = hourlyWeather.list[index];

                  return HourlyForcastTile(
                    id: forecast.weather[0].id,
                    hour: forecast.dt.time,
                    temp: forecast.main.temp.round(),
                    isActive: index == 0,
                  );
                }
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: (){
          return Center(child: const CircularProgressIndicator());
        }
    );
  }
}

class HourlyForcastTile extends StatelessWidget {
  const HourlyForcastTile({
    super.key,
    required this.id,
    required this.hour,
    required this.temp,
    required this.isActive,
  });

  final int id;
  final String hour;
  final int temp;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        top: 12,
        bottom: 12,
      ),
      child: Material(
        color: isActive ? AppColors.lightBlue : AppColors.accentBlue,
        borderRadius: BorderRadius.circular(15.0),
        elevation: isActive ? 8 : 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                getWeatherIcon(weatherCode: id),
                width: 50,
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    hour,
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '$temp°',
                    style: TextStyles.h3,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}