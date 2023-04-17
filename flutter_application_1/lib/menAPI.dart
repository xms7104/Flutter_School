import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import './productHome.dart';

void main() {
  runApp(const Men());
}

class Men extends StatelessWidget {
  const Men({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenDate(),
    );
  }
}

class MenDate extends StatefulWidget {
  const MenDate({Key? key}) : super(key: key);

  @override
  State<MenDate> createState() => _MenDateState();
}

class _MenDateState extends State<MenDate> {
  bool _isLoading = true;
  var jsonList;

  @override
  // ignore: must_call_super
  void initState() {
    getData();
  }

  Future getData() async {
    var response = await http
        .get(Uri.parse('https://api.appworks-school.tw/api/1.0/products/men'));
    if (response.statusCode == 200) {
      String jsonString = '[${response.body}]';
      List<dynamic> jsonList = json.decode(jsonString);
      List<Map<String, dynamic>> mapList =
          List<Map<String, dynamic>>.from(jsonList);
      jsonList = mapList[0]['data'];
      return jsonList;
    } else {
      throw Exception('Failed to load data');
    }
  }

  void _updateMessage() {
    getData().then((data) {
      setState(() {
        jsonList = data;
      });
      if (jsonList != []) {
        _isLoading = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading || jsonList == null) {
      _updateMessage();
      return Scaffold(
          body: Center(
        child: Image.asset('./images/loading.gif'),
      ));
    } else {
      return Scaffold(
        body: ListView.builder(
            itemCount: jsonList == null ? 0 : jsonList.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  height: 150.0,
                  child: Card(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ProductHome(
                                    id: jsonList[index]['id'].toString());
                              }),
                            );
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: FractionallySizedBox(
                                      heightFactor: 2.0,
                                      child: AspectRatio(
                                          aspectRatio: 1.0,
                                          child: Image.network(
                                            jsonList[index]['main_image']
                                                .toString(),
                                          ))),
                                  title:
                                      Text(jsonList[index]['title'].toString()),
                                  subtitle: Text(
                                      'NT \$${jsonList[index]['price'].toString()}'),
                                )
                              ]))));
            }),
      );
    }
  }
}
