// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DetailInformation extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailInformation({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double screenHeight;
    // ignore: unused_local_variable
    double widthMobile;
    if (screenSize.width >= 600) {
      screenHeight = 2.2;
      widthMobile = 0.6;
    } else {
      screenHeight = 1.5;
      widthMobile = 1;
    }
    return Scaffold(
        body: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            // ignore: unnecessary_null_comparison
            itemCount: data == null ? 0 : 1,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * screenHeight,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '網頁資訊',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                const SizedBox(height: 20.0),
                                Container(
                                  height: 1.0,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black, Colors.blue],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              data['story'].toString(),
                              style: const TextStyle(fontSize: 14.0),
                            ),
                            const SizedBox(height: 20.0),
                            Column(
                                children: List.generate(data['images'].length,
                                    (index) {
                              return Container(
                                  margin: const EdgeInsets.all(10),
                                  child: ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 600,
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Image.network(
                                            data['images'][index].toString()),
                                      )));
                            })),
                          ],
                        ),
                      ),
                    ],
                  )));
            }));
  }
}
