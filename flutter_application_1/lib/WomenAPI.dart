import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './productHome.dart';

void main() {
  runApp(const Women());
}

class Women extends StatelessWidget {
  const Women({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WomenDate(),
    );
  }
}

class WomenDate extends StatefulWidget {
  const WomenDate({Key? key}) : super(key: key);

  @override
  State<WomenDate> createState() => _WomenDateState();
}

class _WomenDateState extends State<WomenDate> {
  var jsonList;

  @override
  // ignore: must_call_super
  void initState() {
    getData();
  }

  void getData() async {
    try {
      var response = await Dio()
          .get('https://api.appworks-school.tw/api/1.0/products/women');
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data['data'] as List;
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: jsonList == null ? 0 : jsonList.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
                height: 150.0,
                child: Card(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProductHome(
                                id: jsonList[index]['id'].toString());
                          }));
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
                                          jsonList[index]['main_image'],
                                        ))),
                                title:
                                    Text(jsonList[index]['title'].toString()),
                                subtitle:
                                    Text('NT \$${jsonList[index]['price']}'),
                              )
                            ]))));
          }),
    );
  }
}
