import  'package:flutter/foundation.dart';

class Post {
  
  //Definisikan key nya

    final String Country_Region;
    final int Confirmed;
    final int Deaths;
    final int Recovered;

  //Definisikan ke object
    Post ({
      @required this.Country_Region,
      @required this.Confirmed,
      @required this.Deaths,
      @required this.Recovered,
    });

  //Menampung data dengan fromat json
    factory Post.fromJson(Map <String, dynamic> json) {
      return Post(
        Country_Region: json['attributes']['Country_Region'] as String,
        Confirmed: json['attributes']['Confirmed'] as int,
        Deaths: json['attributes']['Deaths'] as int,
        Recovered: json['attributes']['Recovered'] as int,
      );
    }
}