import 'package:flutter/material.dart';
import 'package:weather_riverpord/models/famous_city.dart';
import 'package:weather_riverpord/screen/weather_detail_screen.dart';
import 'package:weather_riverpord/widgets/famous_city_tile.dart';

class FamousCitiesView extends StatelessWidget {
  const FamousCitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: famousCities.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          final city = famousCities[index];

          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      WeatherDetailScreen(cityName: city.name)));
            },
            child: FamousCityTile(
              index: index,
              city: city.name,
            ),
          );
        });
  }
}
