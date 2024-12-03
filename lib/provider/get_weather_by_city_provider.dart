import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_riverpord/services/api_helper.dart';

import '../models/weather.dart';

final weatherByCityNameProvider = FutureProvider.autoDispose
    .family<Weather, String>((ref, String cityName) async {
  return ApiHelper.getWeatherByCityName(cityName: cityName);
});
