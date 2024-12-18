import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: false,
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.condition,
                ),
              ),
              home: const HomeView(),
            );
          },
        );
      }),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case 'rain':
    case 'rainallday':
    case 'raindefinite':
    case 'snow':
    case 'snowallday':
    case 'snowdefinite':
    case 'rain, partially cloudy':
      return Colors.blueGrey;

    case 'partially cloudy':
    case 'cloudierpm':
    case 'variablecloud':
      return Colors.lightBlue;

    case 'overcast':
    case 'cloudcover':
      return Colors.grey;

    case 'clear':
    case 'sunshine':
      return Colors.yellow;

    case 'stormspossible':
    case 'stormsstrong':
      return Colors.deepPurple;

    case 'coolingdown':
    case 'warmingup':
      return Colors.orange;

    default:
      return Colors.blue; // Default color if condition not matched
  }
}
