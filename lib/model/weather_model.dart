// class WeatherModel {
//   Coord? coord;
//   List<Weather>? weather;
//   String? base;
//   Main? main;
//   int? visibility;
//   Wind? wind;
//   Clouds? clouds;
//   int? dt;
//   Sys? sys;
//   int? timezone;
//   int? id;
//   String? name;
//   int? cod;

//   WeatherModel(
//       {this.coord,
//       this.weather,
//       this.base,
//       this.main,
//       this.visibility,
//       this.wind,
//       this.clouds,
//       this.dt,
//       this.sys,
//       this.timezone,
//       this.id,
//       this.name,
//       this.cod});

//   WeatherModel.fromJson(Map<String, dynamic> json) {
//     coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
//     if (json['weather'] != null) {
//       weather = <Weather>[];
//       json['weather'].forEach((v) {
//         weather!.add(new Weather.fromJson(v));
//       });
//     }
//     base = json['base'];
//     main = json['main'] != null ? new Main.fromJson(json['main']) : null;
//     visibility = json['visibility'];
//     wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
//     clouds =
//         json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
//     dt = json['dt'];
//     sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
//     timezone = json['timezone'];
//     id = json['id'];
//     name = json['name'];
//     cod = json['cod'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.coord != null) {
//       data['coord'] = this.coord!.toJson();
//     }
//     if (this.weather != null) {
//       data['weather'] = this.weather!.map((v) => v.toJson()).toList();
//     }
//     data['base'] = this.base;
//     if (this.main != null) {
//       data['main'] = this.main!.toJson();
//     }
//     data['visibility'] = this.visibility;
//     if (this.wind != null) {
//       data['wind'] = this.wind!.toJson();
//     }
//     if (this.clouds != null) {
//       data['clouds'] = this.clouds!.toJson();
//     }
//     data['dt'] = this.dt;
//     if (this.sys != null) {
//       data['sys'] = this.sys!.toJson();
//     }
//     data['timezone'] = this.timezone;
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['cod'] = this.cod;
//     return data;
//   }
// }

// class Coord {
//   double? lon;
//   double? lat;

//   Coord({this.lon, this.lat});

//   Coord.fromJson(Map<String, dynamic> json) {
//     lon = json['lon'];
//     lat = json['lat'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lon'] = this.lon;
//     data['lat'] = this.lat;
//     return data;
//   }
// }

// class Weather {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;

//   Weather({this.id, this.main, this.description, this.icon});

//   Weather.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     main = json['main'];
//     description = json['description'];
//     icon = json['icon'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['main'] = this.main;
//     data['description'] = this.description;
//     data['icon'] = this.icon;
//     return data;
//   }
// }

// class Main {
//   double? temp;
//   double? feelsLike;
//   double? tempMin;
//   double? tempMax;
//   int? pressure;
//   int? humidity;

//   Main(
//       {this.temp,
//       this.feelsLike,
//       this.tempMin,
//       this.tempMax,
//       this.pressure,
//       this.humidity});

//   Main.fromJson(Map<String, dynamic> json) {
//     temp = json['temp'];
//     feelsLike = json['feels_like'];
//     tempMin = json['temp_min'];
//     tempMax = json['temp_max'];
//     pressure = json['pressure'];
//     humidity = json['humidity'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['temp'] = this.temp;
//     data['feels_like'] = this.feelsLike;
//     data['temp_min'] = this.tempMin;
//     data['temp_max'] = this.tempMax;
//     data['pressure'] = this.pressure;
//     data['humidity'] = this.humidity;
//     return data;
//   }
// }

// class Wind {
//   double? speed;
//   int? deg;

//   Wind({this.speed, this.deg});

//   Wind.fromJson(Map<String, dynamic> json) {
//     speed = json['speed'];
//     deg = json['deg'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['speed'] = this.speed;
//     data['deg'] = this.deg;
//     return data;
//   }
// }

// class Clouds {
//   int? all;

//   Clouds({this.all});

//   Clouds.fromJson(Map<String, dynamic> json) {
//     all = json['all'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['all'] = this.all;
//     return data;
//   }
// }

// class Sys {
//   int? type;
//   int? id;
//   String? country;
//   int? sunrise;
//   int? sunset;

//   Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

//   Sys.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     id = json['id'];
//     country = json['country'];
//     sunrise = json['sunrise'];
//     sunset = json['sunset'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['type'] = this.type;
//     data['id'] = this.id;
//     data['country'] = this.country;
//     data['sunrise'] = this.sunrise;
//     data['sunset'] = this.sunset;
//     return data;
//   }
// }

import 'dart:convert';

WeatherData weatherDataFromJson(String str) => WeatherData.fromJson(json.decode(str));

String weatherDataToJson(WeatherData data) => json.encode(data.toJson());

class WeatherData {
    WeatherData({
        required this.coord,
        required this.weather,
        required this.base,
        required this.main,
        required this.visibility,
        required this.wind,
        required this.clouds,
        required this.dt,
        required this.sys,
        required this.timezone,
        required this.id,
        required this.name,
        required this.cod,
    });

    Coord coord;
    List<Weather> weather;
    String base;
    Main main;
    int visibility;
    Wind wind;
    Clouds clouds;
    int dt;
    Sys sys;
    int timezone;
    int id;
    String name;
    int cod;

    factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
        coord: Coord.fromJson(json["coord"]),
        weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        base: json["base"],
        main: Main.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromJson(json["wind"]),
        clouds: Clouds.fromJson(json["clouds"]),
        dt: json["dt"],
        sys: Sys.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
    );

    Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        "clouds": clouds.toJson(),
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
    };
}

class Clouds {
    Clouds({
        required this.all,
    });

    int all;

    factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"],
    );

    Map<String, dynamic> toJson() => {
        "all": all,
    };
}

class Coord {
    Coord({
        required this.lon,
        required this.lat,
    });

    double lon;
    double lat;

    factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
    };
}

class Main {
    Main({
        required this.temp,
        required this.feelsLike,
        required this.tempMin,
        required this.tempMax,
        required this.pressure,
        required this.humidity,
    });

    double temp;
    double feelsLike;
    double tempMin;
    double tempMax;
    int pressure;
    int humidity;

    factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
    );

    Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
    };
}

class Sys {
    Sys({
        required this.type,
        required this.id,
        required this.country,
        required this.sunrise,
        required this.sunset,
    });

    int type;
    int id;
    String country;
    int sunrise;
    int sunset;

    factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json["type"],
        id: json["id"],
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
    };
}

class Weather {
    Weather({
        required this.id,
        required this.main,
        required this.description,
        required this.icon,
    });

    int id;
    String main;
    String description;
    String icon;

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
    };
}

class Wind {
    Wind({
        required this.speed,
        required this.deg,
    });

    double speed;
    int deg;

    factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
    );

    Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
    };
}
