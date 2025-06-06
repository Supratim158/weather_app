import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/extensions/datetime.dart';
import 'package:weather_app/provider/current_weather_provider.dart';
import 'package:weather_app/views/gradient_container.dart';
import '../views/hourly_forecast_view.dart';
import '../views/weather_info.dart';
import '/constants/text_styles.dart';
class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final weatherData = ref.watch(currentWeatherProvider);

    return weatherData.when(
        data: (weather){
          return GradientContainer(
              children: [
                const SizedBox(width: double.infinity,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(weather.name, style: TextStyles.h1,),
                    const SizedBox(height: 20,),
                    Text(DateTime.now().dateTime,style: TextStyles.subtitleText),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 260,
                      child: Image.asset('assets/icons/${weather.weather[0].icon.replaceAll('n', 'd')}.png'),
                    ),
                    const SizedBox(height: 40,),
                    Text(weather.weather[0].description,style: TextStyles.h2,),

                  ],
                ),
                const SizedBox(height: 40,),
                WeatherInfo(
                  weather: weather,
                ),
                const SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Today', style: TextStyles.h2,),
                    TextButton(
                        onPressed: (){},
                        child: const Text('View full forecast') )
                  ],
                ),
                const SizedBox(height: 15,),

                HourlyForecastWeather(),

              ]
          );
        },
        error: (error, StackTrace){
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: (){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
    );
  }
}
