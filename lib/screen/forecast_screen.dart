import 'package:flutter/material.dart';
import 'package:weather_riverpord/constants/text_style.dart';
import 'package:weather_riverpord/extensions/datetime.dart';
import 'package:weather_riverpord/views/gradient_container.dart';
import 'package:weather_riverpord/views/hourly_forecast_view.dart';
import 'package:weather_riverpord/views/weekly_forecast_view.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        children: [
          Align(
              alignment: Alignment.center,
            child: const Text(
              "Forecast Report",
              style: TextStyles.h1,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Today",
                 style: TextStyles.h2,

              ),
              Text(DateTime.now().dateTime, style: TextStyles.subtitleText,),
            ],
          ),
           const SizedBox(height: 20,),
             const HourlyForecastView(),
             const SizedBox(height: 20,),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                Text( 'Next Forecast',style: TextStyles.h1,),
                Icon(Icons.calendar_month_outlined,
                  color: Colors.white,
                ),

             ],
          ),
           SizedBox(
              height: 30,
           ),
          WeeklyForecastView(),
        ],
      ),
    );
  }
}