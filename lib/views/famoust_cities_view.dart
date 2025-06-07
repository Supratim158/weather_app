import 'package:flutter/material.dart';
import 'package:weather_app/models/famoust_city.dart';

import '../screens/weather_detailed_screen.dart';
import '../widgets/famous_city_tile.dart';

class FamousCitiesWeather extends StatelessWidget {
  const FamousCitiesWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: famousCities.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index){
          final city = famousCities[index];

          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => WeatherDetailScreen(
                    cityName: city.name,
                  ),
                ),
              );
            },
            child: CityWeatherTile(
              index: index,
              city: city
            ),
          );
        }
    );
  }
}
