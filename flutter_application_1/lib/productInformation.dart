// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import './countState.dart';

class ProductInformation extends StatelessWidget {
  final String id;
  final Map<String, dynamic> data;
  const ProductInformation({Key? key, required this.id, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Color> ColorArray = [];
    for (var i = 0; i < data['colors'].length; i++) {
      // ignore: prefer_interpolation_to_compose_strings
      var colorARGB = '0xFF' + data['colors'][i]['code'];
      // ignore: unnecessary_cast
      final Color colorCode = Color(int.parse(colorARGB)) as Color;
      ColorArray.add(colorCode);
    }
    int _selectedIndex = -1;

    if (MediaQuery.of(context).size.width > 600) {
      return Scaffold(
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            // ignore: unnecessary_null_comparison
            itemCount: data == null ? 0 : 1,
            itemBuilder: (BuildContext context, int index) {
              String str = data['description'];
              List<String> description = str.split('\r\n');
              return SizedBox(
                  height: 700,
                  child: Card(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.start, // 主對齊方式設置為 start
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // 交叉對齊方式設置為 start
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  child: FractionallySizedBox(
                                      widthFactor: 0.75,
                                      heightFactor: 0.75,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.network(
                                          data['main_image'].toString(),
                                        ),
                                      ))),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data["title"].toString(),
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 10.0),
                                Text(data["id"].toString(),
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    )),
                                const SizedBox(height: 30.0),
                                Text('NT\$${data["price"]}',
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 20.0),
                                const Divider(
                                  color: Colors.grey,
                                  thickness: 1.0,
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  children: [
                                    const Text(
                                      '顏色',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 20.0),
                                    const VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                    ),
                                    const SizedBox(width: 20.0),
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 10,
                                      children: List.generate(ColorArray.length,
                                          (index) {
                                        return InkWell(
                                          onTap: () {
                                            _selectedIndex =
                                                index; // 當點擊按鈕時，將_selectedIndex設置為當前按鈕的index
                                          },
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: ColorArray[
                                                  index], // 設置按鈕的背景顏色
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 1),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30.0),
                                Row(
                                  children: [
                                    const Text(
                                      '尺寸',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 20.0),
                                    const VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                    ),
                                    const SizedBox(width: 20.0),
                                    SizedBox(
                                      height: 100,
                                      width: 200,
                                      child: MyButton(data: data['sizes']),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30.0),
                                Row(children: const [
                                  Text(
                                    '數量',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 20.0),
                                  VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1.0,
                                  ),
                                  SizedBox(width: 20.0),
                                  Expanded(
                                    child: SizedBox(
                                        height: 30, child: CarCountPage()),
                                  ),
                                ]),
                                const SizedBox(height: 20),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.brown[700],
                                      ),
                                      onPressed: () {},
                                      child: const Text('請選擇尺寸',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white)),
                                    )),
                                const SizedBox(height: 20),
                                Text(data["note"].toString(),
                                    style: const TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                                const SizedBox(height: 10),
                                Text(data["texture"].toString(),
                                    style: const TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                                const SizedBox(height: 10),
                                Text(description[0].toString(),
                                    style: const TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                                const SizedBox(height: 10),
                                Text(description[1].toString(),
                                    style: const TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                                const SizedBox(height: 10),
                                Text('產地：${data["place"]}',
                                    style: const TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                                const SizedBox(height: 10),
                                Text('注意事項：${data["wash"]}',
                                    style: const TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  )));
            }),
      );
    } else {
      return Scaffold(
          body: SizedBox(
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            // ignore: unnecessary_null_comparison
            itemCount: data == null ? 0 : 1,
            itemBuilder: (BuildContext context, int index) {
              String str = data['description'];
              List<String> description = str.split('\r\n');
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // 主對齊方式設置為 start
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // 交叉對齊方式設置為 start
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                //   child: FractionallySizedBox(
                                // widthFactor: 0.75,
                                // heightFactor: 0.35,
                                child: Center(
                                    child: Image.network(
                                  data['main_image'].toString(),
                                  // ),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Expanded(
                                flex: 25,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(data["title"].toString(),
                                        style: const TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    const SizedBox(height: 10.0),
                                    Text(data["id"].toString(),
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                        )),
                                    const SizedBox(height: 30.0),
                                    Text('NT\$${data["price"]}',
                                        style: const TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    const SizedBox(height: 20.0),
                                    const Divider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                    ),
                                    const SizedBox(height: 20.0),
                                    Row(
                                      children: [
                                        const Text(
                                          '顏色',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(width: 20.0),
                                        const VerticalDivider(
                                          color: Colors.grey,
                                          thickness: 1.0,
                                        ),
                                        const SizedBox(width: 20.0),
                                        Wrap(
                                          spacing: 10,
                                          runSpacing: 10,
                                          children: List.generate(
                                              ColorArray.length, (index) {
                                            return InkWell(
                                              onTap: () {
                                                _selectedIndex =
                                                    index; // 當點擊按鈕時，將_selectedIndex設置為當前按鈕的index
                                              },
                                              child: Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  color: ColorArray[
                                                      index], // 設置按鈕的背景顏色
                                                  border: Border.all(
                                                      color: Colors.black,
                                                      width: 1),
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 30.0),
                                    Row(
                                      children: [
                                        const Text(
                                          '尺寸',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(width: 20.0),
                                        const VerticalDivider(
                                          color: Colors.grey,
                                          thickness: 1.0,
                                        ),
                                        const SizedBox(width: 20.0),
                                        SizedBox(
                                          height: 100,
                                          width: 200,
                                          child: MyButton(data: data['sizes']),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 30.0),
                                    Row(children: const [
                                      Text(
                                        '數量',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      VerticalDivider(
                                        color: Colors.grey,
                                        thickness: 1.0,
                                      ),
                                      SizedBox(width: 20.0),
                                      Expanded(
                                        child: SizedBox(
                                            height: 30, child: CarCountPage()),
                                      ),
                                    ]),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 50,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.brown[700],
                                          ),
                                          onPressed: () {},
                                          child: const Text('請選擇尺寸',
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white)),
                                        )),
                                    const SizedBox(height: 20),
                                    Text(data["note"].toString(),
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black)),
                                    const SizedBox(height: 10),
                                    Text(data["texture"].toString(),
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black)),
                                    const SizedBox(height: 10),
                                    Text(description[0].toString(),
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black)),
                                    const SizedBox(height: 10),
                                    Text(description[1].toString(),
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black)),
                                    const SizedBox(height: 10),
                                    Text('產地：${data["place"]}',
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black)),
                                    const SizedBox(height: 10),
                                    Text('注意事項：${data["wash"]}',
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black)),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ));
            }),
      ));
    }
  }
}

class MyButton extends StatefulWidget {
  final List<dynamic> data;
  const MyButton({super.key, required this.data});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int _selectedButtonIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: 100,
          width: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              // ignore: unnecessary_null_comparison
              itemCount: widget.data == null ? 0 : widget.data.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCustomButton(
                  text: widget.data[index],
                  index: index,
                  isSelected: _selectedButtonIndex == index,
                  onPressed: () {
                    setState(() {
                      _selectedButtonIndex = index;
                    });
                  },
                );
              })),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  final String text;
  final int index;
  final bool isSelected;
  final VoidCallback onPressed;

  const MyCustomButton({
    Key? key,
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: isSelected ? Colors.white : Colors.black,
            backgroundColor: isSelected ? Colors.black : Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(0),
            minimumSize: const Size(40, 40),
          ),
          child: Text(text),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
