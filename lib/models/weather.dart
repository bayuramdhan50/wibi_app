class Weather {
  final String cityName;
  final double temperature;
  final int humidity;
  final double windSpeed;
  final String condition;
  final String description;
  final String iconAsset;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.condition,
    required this.description,
    required this.iconAsset,
  });
}

// Data statis cuaca
class WeatherData {
  static Weather getCurrentWeather() {
    return Weather(
      cityName: 'Bandung',
      temperature: 25,
      humidity: 75,
      windSpeed: 12.5,
      condition: 'Cerah Berawan',
      description:
          'Cuaca cerah dengan beberapa awan, cocok untuk aktivitas outdoor',
      iconAsset: '☀️',
    );
  }

  static List<Map<String, dynamic>> getForecast() {
    return [
      {'day': 'Senin', 'temp': '27°C', 'icon': '⛅', 'condition': 'Berawan'},
      {'day': 'Selasa', 'temp': '29°C', 'icon': '☀️', 'condition': 'Cerah'},
      {'day': 'Rabu', 'temp': '26°C', 'icon': '🌧️', 'condition': 'Hujan'},
      {'day': 'Kamis', 'temp': '28°C', 'icon': '⛅', 'condition': 'Berawan'},
      {'day': 'Jumat', 'temp': '30°C', 'icon': '☀️', 'condition': 'Cerah'},
    ];
  }
}
