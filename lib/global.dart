import 'package:covid19/get_post_global.dart';
import 'get_post_model_global.dart';
import 'get_post_global.dart';
import 'package:flutter/material.dart';

class Global extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('Kasus Global'),
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
                    DataColumn(label: Text('Negara')),
                    DataColumn(label: Text('Positif')),
                    DataColumn(label: Text('Sembuh')),
                    DataColumn(label: Text('Meninggal')),
                  ],
                  rows: dataPost
                      .map((Post dataPost) =>
                      DataRow(cells: [
                        DataCell(Text(dataPost.Country_Region.toString())),
                        DataCell(Text(dataPost.Confirmed.toString())),
                        DataCell(Text(dataPost.Recovered.toString())),
                        DataCell(Text(dataPost.Deaths.toString())),
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