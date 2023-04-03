import 'package:flutter/material.dart';
import './ProductInformation.dart';
import './informationBottom.dart';
import './main.dart';

void main() {
  runApp(const ProductHome());
}

class ProductHome extends StatelessWidget {
const  ProductHome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'StyLish Product Page',
      home: ProductHomePage(),
    );
  }
}

class ProductHomePage extends StatefulWidget {
  const ProductHomePage({super.key});
  

  @override
  State<ProductHomePage> createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double screenHeight;
    int productFlex;
    if (screenSize.width >= 600) {
      screenHeight = 2.7;
      productFlex = 1;
    }else{
      screenHeight = 2.2;
      productFlex = 2;
    }
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0, // 将阴影去掉，以使AppBar看起来更平面
        ),
      ),
      child: Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: 
         Center(
          child:OutlinedButton(
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
            );},
          child: 
          Image.asset('./images/Image_Logo02.png',width: 200,))
         )
        
      ),
      body: 
      Padding(padding: const EdgeInsets.all(16.0),
      child: Scrollbar( 
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: SizedBox
        (height: MediaQuery.of(context).size.height*screenHeight,
        child: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: productFlex,
            child:Align(
            alignment: Alignment.topCenter,
            child:SizedBox(
            height: MediaQuery.of(context).size.height,
           child: const ProductInformation()
          ))),
           const Expanded(
            flex: 2,
            child:Padding(
            padding: EdgeInsets.all(16.0),
            child: 
            SizedBox(
            child:DetailInformation()
          ),
          )
          ),
         ],
        )
        )
      ,)
    ),
    ),
    )
    ));
  }
}
