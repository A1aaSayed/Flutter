class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String condition;

  WeatherModel({
    required this.cityName,
    required this.date,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['address'],
      date: json['currentConditions']['datetime'],
      temp: json['days'][0]['temp'],
      maxTemp: json['days'][0]['tempmax'],
      minTemp: json['days'][0]['tempmin'],
      condition: json['days'][0]['conditions'],
    );
  }

  String getWeatherImage(String condition) {
    if (condition.contains('Clear')) {
      return 'assets/images/clear.png';
    } else if (condition.contains('Rain') && condition.contains('cloudy')) {
      return 'assets/images/rainy.png';
    } else if (condition.contains('cloudy') || condition.contains('Overcast')) {
      return 'assets/images/cloudy.png';
    }   else if (condition.contains('Snow')) {
      return 'assets/images/snow.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

  DateTime stringToDateTime(String value) {
    return DateTime.parse(value);
  }
}
