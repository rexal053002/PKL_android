import 'dart:convert';
import 'package:http/http.dart';
import 'get_post_model_lokal.dart';

class GetPost {
  final String getposturl = "https://api.kawalcorona.com/indonesia/provinsi";

  //mengambil data
    Future<List<Post>> manggilPostData() async{
      Response res = await get(getposturl);
  //Mengubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
  //Data ditampung ke dalam list dimodel post dan dirubah ke format json
    List<Post> postData = body.map((dynamic item) => Post.fromJson(item)).toList();
    return postData;
    }
    else{
      throw "Data tidak ada";
    }
  }
}