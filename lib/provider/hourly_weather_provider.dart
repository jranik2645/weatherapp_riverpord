import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_riverpord/services/api_helper.dart';


final hourlyWeatherProvider=FutureProvider.autoDispose((ref)async{

  return ApiHelper.getHourlyForecast();

});