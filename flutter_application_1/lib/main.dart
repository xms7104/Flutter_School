// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import './productHome.dart';
import './WomenAPI.dart';
import './menAPI.dart';
import './accessoriesAPI.dart';
import './productMobileList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyLish',
      theme: ThemeData(),
      home: const MyHomePage(title: 'StyLish Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool womanListState = true;
  bool manListState = true;
  bool accessoriesListState = true;
  final String productId = '123456';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 600) {
        return Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.white,
                  child: Image.asset('/images/Image_Logo02.png'),
                )),
            Expanded(
              flex: 4,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  8,
                  (index) {
                    return Container(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('/images/0322title.jpg')));
                  },
                ),
              ),
            ),
            const Expanded(
                flex: 10,
                child: Expanded(flex: 10, child: ProductListMobilePage())),
          ],
        );
      } else {
        return Center(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Image.asset('/images/Image_Logo02.png'),
                  )),
              Expanded(
                flex: 3,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    8,
                    (index) {
                      return Container(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset('/images/0322title.jpg')));
                    },
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                      onPressed: () => {},
                      style: TextButton.styleFrom(
                        side: const BorderSide(width: 0, color: Colors.white),
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: const Text('女裝'),
                    )),
                    Expanded(
                        child: TextButton(
                      onPressed: () => {},
                      style: TextButton.styleFrom(
                        side: const BorderSide(width: 0, color: Colors.white),
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: const Text('男裝'),
                    )),
                    Expanded(
                        child: TextButton(
                      onPressed: () => {},
                      style: TextButton.styleFrom(
                        side: const BorderSide(width: 0, color: Colors.white),
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: const Text('配件'),
                    )),
                  ])),
              Expanded(
                flex: 10,
                child: SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(child: WomenDate()),
                      Expanded(child: MenDate()),
                      Expanded(child: AccessoriesDate()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }));
  }
}
