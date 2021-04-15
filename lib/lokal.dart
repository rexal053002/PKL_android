import 'package:covid19/get_post_lokal.dart';
import 'get_post_model_lokal.dart';
import 'get_post_lokal.dart';
import 'package:flutter/material.dart';

class Lokal extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('Kasus Lokal'),
      backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: _getPost.manggilPostData(),
        // ignore: missing_return
        builder: (context, AsyncSnapshot<List<Post>> snapshot) {

          if (snapshot.hasData) {
            List<Post> dataPost = snapshot.data;

            return SingleChildScrollView(
                scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Kode Provinsi')),
                    DataColumn(label: Text('Provinsi')),
                    DataColumn(label: Text('Positif')),
                    DataColumn(label: Text('Sembuh')),
                    DataColumn(label: Text('Meninggal')),
                  ],
                  rows: dataPost
                      .map((Post dataPost) =>
                      DataRow(cells: [
                        DataCell(Text(dataPost.Kode_Provi.toString())),
                        DataCell(Text(dataPost.Provinsi.toString())),
                        DataCell(Text(dataPost.Kasus_Posi.toString())),
                        DataCell(Text(dataPost.Kasus_Semb.toString())),
                        DataCell(Text(dataPost.Kasus_Meni.toString())),
                      ]))
                      .toList(),
                )));
          }
          else{
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(strokeWidth:5),
                  Center(
                    child: Text(
                      "Memuat",
                      style: TextStyle(height: 5),
                    ),
                  ),
                ],
              );
             }

        }
      ),
    );
  }
}

// ListView.builder(
//               itemCount: dataPost.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: Card(
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(5),
//                           ),
//                           Text('Negara :'+dataPost[index].Country_Region.toString()),
//                           Text('Positif :'+dataPost[index].Confirmed.toString()),
//                           Text('Meninggal :'+dataPost[index].Deaths.toString()),
//                           Text('Sembuh :'+dataPost[index].Recovered.toString()),
//                       ],)
//                   )
//                 );
//               });