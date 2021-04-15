import  'package:flutter/foundation.dart';

class Post {
  
  //Definisikan key nya

    final int Kode_Provi;
    final String Provinsi;
    final int Kasus_Posi;
    final int Kasus_Semb;
    final int Kasus_Meni;

  //Definisikan ke object
    Post ({
      @required this.Kode_Provi,
      @required this.Provinsi,
      @required this.Kasus_Posi,
      @required this.Kasus_Semb,
      @required this.Kasus_Meni,
    });

  //Menampung data dengan fromat json
    factory Post.fromJson(Map <String, dynamic> json) {
      return Post(
        Kode_Provi: json['attributes']['Kode_Provi'] as int,
        Provinsi : json['attributes']['Provinsi'] as String,
        Kasus_Posi: json['attributes']['Kasus_Posi'] as int,
        Kasus_Semb: json['attributes']['Kasus_Semb'] as int,
        Kasus_Meni: json['attributes']['Kasus_Meni'] as int,
      );
    }
}