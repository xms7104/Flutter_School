import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/WomenAPI.dart';
import './ProductInformation.dart';
import './informationBottom.dart';
import './main.dart';

class ProductHome extends StatefulWidget {
  final String id;
  const ProductHome({
    super.key,
    required this.id,
  });

  @override
  State<ProductHome> createState() => _ProductDateState();
}

class _ProductDateState extends State<ProductHome> {
  // ignore: prefer_typing_uninitialized_variables
  var jsonList;

  @override
  void initState() {
    getData();
  }

  void getData() async {
    var id = widget.id;
    try {
      var response = await Dio().get(
          "https://api.appworks-school.tw/api/1.0/products/details?id=$id");
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data['data'];
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
    if (jsonList == null) {
      return Scaffold(
        body: Center(child: Image.asset('./images/loading.gif')),
      );
    } else {
      // ignore: unused_local_variable
      String data1Str = '$jsonList';
      Map<String, dynamic> dataMap = jsonList;
      var data = dataMap;
      var id = widget.id;
      final screenSize = MediaQuery.of(context).size;

      // ignore: unused_local_variable
      double screenHeight;
      int productFlex;
      double imageFlex;

      if (screenSize.width >= 600) {
        screenHeight = 2.7;
        productFlex = 1;
        imageFlex = 2.2;
      } else {
        screenHeight = 2.2;
        productFlex = 2;
        imageFlex = 1.4;
      }

      return Theme(
          data: ThemeData(
            appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0, // 将阴影去掉，以使AppBar看起来更平面
            ),
          ),
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                  title: Center(
                      child: OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.resolveWith<BorderSide>(
                              (Set<MaterialState> states) {
                                return BorderSide.none;
                              },
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyApp(),
                              ),
                            );
                          },
                          child: Image.asset(
                            './images/Image_Logo02.png',
                            width: 200,
                          )))),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      reverse: true,
                      physics: const BouncingScrollPhysics(),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 3,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: productFlex,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.4,
                                            child: ProductInformation(
                                                id: id, data: data)))),
                                Expanded(
                                    flex: 2,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              imageFlex,
                                          child: DetailInformation(data: data),
                                        ))),
                              ],
                            )),
                          ))),
                ),
              )));
    }
  }
}
