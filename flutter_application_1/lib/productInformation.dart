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
                                    Wrap(
                                        spacing: 10,
                                        runSpacing: 10,
                                        children: List.generate(
                                            data['sizes'].length, (index) {
                                          return Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8, horizontal: 16),
                                            decoration: const BoxDecoration(
                                              color: Colors.black,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Text(
                                              data['sizes'][index].toString(),
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          );
                                        }))
                                    // ColorChangingButton(
                                    //   onPressed: () {},
                                    //   text: '',
                                    // ),
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
                                    child: 
                                    SizedBox(
                                     height: 30,
                                    child:CarCountPage()),
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
                                        Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            children: List.generate(
                                                data['sizes'].length, (index) {
                                              return Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8,
                                                        horizontal: 16),
                                                decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Text(
                                                  data['sizes'][index]
                                                      .toString(),
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                ),
                                              );
                                            }))
                                        // ColorChangingButton(
                                        //   onPressed: () {},
                                        //   text: '',
                                        // ),
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
                                     height: 30,
                                    child:CarCountPage()),
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

class ColorChangingButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const ColorChangingButton(
      {super.key, required this.onPressed, required this.text});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangingButton createState() => _ColorChangingButton();
}

class _ColorChangingButton extends State<ColorChangingButton> {
  final Map<String, dynamic> _data = {
    'S': false,
    'M': false,
    'L': false,
  };

  bool _isPressed = false;
  // ignore: non_constant_identifier_names
  bool _updateColor_S = false;
  // ignore: non_constant_identifier_names
  bool _updateColor_M = false;
  // ignore: non_constant_identifier_names
  bool _updateColor_L = false;
  Color _backgroundColor_S = Colors.black;
  Color _backgroundColor_M = Colors.black;
  Color _backgroundColor_L = Colors.black;

  @override
  Widget build(BuildContext context) {
    if (_isPressed && _updateColor_S && !_updateColor_M && !_updateColor_L) {
      _backgroundColor_S =
          _backgroundColor_S == Colors.black ? Colors.grey : Colors.black;
    }

    if (_isPressed && _updateColor_M && !_updateColor_S && !_updateColor_L) {
      _backgroundColor_M =
          _backgroundColor_M == Colors.black ? Colors.grey : Colors.black;
    }

    if (_isPressed && _updateColor_L && !_updateColor_S && !_updateColor_M) {
      _backgroundColor_L =
          _backgroundColor_L == Colors.black ? Colors.grey : Colors.black;
    }
    return Row(
      children: [
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isPressed = true;
              _updateColor_S = true;
              _updateColor_M = false;
              _updateColor_L = false;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isPressed = false;
              _updateColor_S = false;
              _updateColor_M = true;
              _updateColor_L = true;
            });
            widget.onPressed();
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
              _updateColor_S = false;
              _updateColor_M = true;
              _updateColor_L = true;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: _backgroundColor_S,
              shape: BoxShape.circle,
            ),
            child: Text(
              'S',
              style: TextStyle(
                color: _backgroundColor_S == Colors.black
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isPressed = true;
              _updateColor_S = false;
              _updateColor_M = true;
              _updateColor_L = false;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isPressed = false;
              _updateColor_S = true;
              _updateColor_M = false;
              _updateColor_L = true;
            });
            widget.onPressed();
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
              _updateColor_S = true;
              _updateColor_M = false;
              _updateColor_L = true;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: _backgroundColor_M,
              shape: BoxShape.circle,
            ),
            child: Text(
              'M',
              style: TextStyle(
                color: _backgroundColor_M == Colors.black
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isPressed = true;
              _updateColor_S = false;
              _updateColor_M = false;
              _updateColor_L = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isPressed = false;
              _updateColor_S = true;
              _updateColor_M = true;
              _updateColor_L = false;
            });
            widget.onPressed();
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
              _updateColor_S = true;
              _updateColor_M = true;
              _updateColor_L = false;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: _backgroundColor_L,
              shape: BoxShape.circle,
            ),
            child: Text(
              'L',
              style: TextStyle(
                color: _backgroundColor_L == Colors.black
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
