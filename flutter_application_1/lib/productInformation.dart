import 'package:flutter/material.dart';

void main() {
  runApp(const ProductInformation());
}

class ProductInformation extends StatelessWidget {
const  ProductInformation({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductInformationPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ProductInformationPage extends StatefulWidget {
  const ProductInformationPage({super.key, required this.title});

  final String title;

  @override
  State<ProductInformationPage> createState() => _ProductInformationPageState();
}

class _ProductInformationPageState extends State<ProductInformationPage> {

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (MediaQuery.of(context).size.width >= 600) {
          return Scaffold(
      body: 
      Padding(padding: const EdgeInsets.all(16.0),
      child: Expanded(
        child:Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.height,
        child:Container(
          alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child:Row(
            children: [
              Expanded(
              flex: 1,
              child:SizedBox(
                child:
                FractionallySizedBox(
                  widthFactor: 0.98,
                  heightFactor: 0.98,
                  child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('images/5.jpg',scale: 0.5,),
                  )
                )),
              ),
              const SizedBox(width: 30,),
              Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text('UNIQLO  特級極輕羽絨外套',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.w600)),
                  const SizedBox(height: 10.0),
                  const Text('2023032101',
                  style: TextStyle(fontSize: 14.0,color: Colors.grey,)),
                  const SizedBox(height: 30.0),
                  const Text('NT\$323',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20.0),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(height: 20.0),
                  Row(children: [
                  const Text('顏色',
                  style: TextStyle(fontSize: 16.0,color: Colors.black,),
                  ),
                  const SizedBox(width: 20.0),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                      ),
                    ),
                  )
                  ],),
                  const SizedBox(height: 30.0),
                  Row(children: [
                  const Text('尺寸',
                  style: TextStyle(fontSize: 16.0,color: Colors.black,),
                  ),
                  const SizedBox(width: 20.0),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(width: 20.0),
                  ColorChangingButton(onPressed: () {  }, text: '',),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('M',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('L',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  ],),
                  const SizedBox(height: 30.0),
                  Row(children: [
                    const Text('數量',
                  style: TextStyle(fontSize: 16.0,color: Colors.black,),
                  ),
                  const SizedBox(width: 20.0),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('-',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  const SizedBox(width: 20),
                   const Expanded(
                    child: SizedBox(
                    child: Text('1',style: TextStyle(fontSize: 16.0,color: Colors.black,), textAlign: TextAlign.center,)),
                   ),
                   const SizedBox(width: 20),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('+',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
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
                    onPressed: (){},
                    child: const Text('請選擇尺寸',style: TextStyle(fontSize: 20.0,color: Colors.white)),
                  )),
                  const SizedBox(height: 20),
                  const Text('實品顏色依單品照為主',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('棉 100%',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('厚薄：薄',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('彈性：無',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('素材產地／日本',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('加工產地／中國',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                ],
              )
              )
            ],
          ), 
          ),
          ],
        ))
        ,))
    ,),)
     );
        } else {
          return Scaffold(
      body: 
      Padding(padding: const EdgeInsets.all(16.0),
      child: Expanded(
        child:Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.height,
        child:Container(
          alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
              Expanded(
              flex: 1,
              child:SizedBox(
                child:
                FractionallySizedBox(
                  widthFactor: 0.98,
                  heightFactor: 0.98,
                  child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('images/5.jpg',scale: 0.5,),
                  )
                )),
              ),
              const SizedBox(width: 30,),
              Expanded(
                flex:3,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text('UNIQLO  特級極輕羽絨外套',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.w600)),
                  const SizedBox(height: 10.0),
                  const Text('2023032101',
                  style: TextStyle(fontSize: 14.0,color: Colors.grey,)),
                  const SizedBox(height: 30.0),
                  const Text('NT\$323',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20.0),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(height: 20.0),
                  Row(children: [
                  const Text('顏色',
                  style: TextStyle(fontSize: 16.0,color: Colors.black,),
                  ),
                  const SizedBox(width: 20.0),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                      ),
                    ),
                  )
                  ],),
                  const SizedBox(height: 30.0),
                  Row(children: [
                  const Text('尺寸',
                  style: TextStyle(fontSize: 16.0,color: Colors.black,),
                  ),
                  const SizedBox(width: 20.0),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('S',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('M',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('L',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  ],),
                  const SizedBox(height: 30.0),
                  Row(children: [
                    const Text('數量',
                  style: TextStyle(fontSize: 16.0,color: Colors.black,),
                  ),
                  const SizedBox(width: 20.0),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const SizedBox(width: 20.0),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('-',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
                  ),
                  const SizedBox(width: 20),
                   const Expanded(
                    child: SizedBox(
                    child: Text('1',style: TextStyle(fontSize: 16.0,color: Colors.black,), textAlign: TextAlign.center,)),
                   ),
                   const SizedBox(width: 20),
                  InkWell(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Text('+',style: TextStyle(
                          color: Colors.white
                        ),),
                        ),
                    ),
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
                    onPressed: (){},
                    child: const Text('請選擇尺寸',style: TextStyle(fontSize: 20.0,color: Colors.white)),
                  )),
                  const SizedBox(height: 20),
                  const Text('實品顏色依單品照為主',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('棉 100%',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('厚薄：薄',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('彈性：無',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('素材產地／日本',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                  const SizedBox(height: 10),
                  const Text('加工產地／中國',style: TextStyle(fontSize: 16.0,color: Colors.black)),
                ],
              )
          ),
          ],
        ))
        ,))
    ,),)
     );
        }
      },
    );
  }
}

class ColorChangingButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const ColorChangingButton({super.key, required this.onPressed, required this.text});

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
    _backgroundColor_S = _backgroundColor_S == Colors.black
    ? Colors.grey
    : Colors.black;
  }

  if (_isPressed && _updateColor_M && !_updateColor_S && !_updateColor_L) {
    _backgroundColor_M = _backgroundColor_M == Colors.black
    ? Colors.grey
    : Colors.black;
  }

  if (_isPressed && _updateColor_L && !_updateColor_S && !_updateColor_M) {
    _backgroundColor_L = _backgroundColor_L == Colors.black
    ? Colors.grey
    : Colors.black;
  }
    return 
    Row(children: [
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
             color: _backgroundColor_S == Colors.black ? Colors.white : Colors.black,
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
             color: _backgroundColor_M == Colors.black ? Colors.white : Colors.black,
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
             color: _backgroundColor_L == Colors.black ? Colors.white : Colors.black,
          ),
        ),
      ),
    )
    ],);
  }
}