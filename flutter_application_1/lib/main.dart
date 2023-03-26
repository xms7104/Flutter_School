// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 450) {
        return Container(
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
              flex: 5,
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
              flex: 10,
              child: SingleChildScrollView(
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Expanded(
                child: SizedBox(
                        child: IntrinsicHeight(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                          Expanded(
                              child: SizedBox(
                                  child: Column(
                            children: [
                              TextButton(
                                onPressed: () => {},
                                style: TextButton.styleFrom(
                                    side: const BorderSide(
                                        width: 0, color: Colors.white),
                                    foregroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    minimumSize: const Size(100, 50)),
                                child: const Text('女裝'),
                              ),
                              SizedBox(
                                  child: womanListState
                                      ? womanListMobile(womanListState)
                                      : const ListMobile())
                            ],
                          ))
                          
                          ),
                        ])))),
           Expanded(
                child: SizedBox(
                    child: IntrinsicHeight(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Expanded(
                          child: SizedBox(
                              child: Column(
                        children: [
                          TextButton(
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                                side: const BorderSide(
                                    width: 0, color: Colors.white),
                                foregroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                minimumSize: const Size(100, 50)),
                            child: const Text('男裝'),
                          ),
                          SizedBox(
                              child: manListState
                                  ? manListMobile(manListState)
                                  : const ListMobile())
                            ],
                          ))),
                        ])))),
           Expanded(
                child: SizedBox(
                    child: IntrinsicHeight(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Expanded(
                          child: SizedBox(
                              child: Column(
                        children: [
                          TextButton(
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                                side: const BorderSide(
                                    width: 0, color: Colors.white),
                                foregroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                minimumSize: const Size(100, 50)),
                            child: const Text('配件'),
                          ),
                          SizedBox(
                              child: accessoriesListState
                                  ? accessoriesListMobile(accessoriesListState)
                                  : const ListMobile())
                            ],
                          ))),
                        ])))),
                ]),
              ),
              
            )
            ),
            

          ],
        ));
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
                    children: [
                      Expanded(
                          child: ListView(
                        children: [
                          Column(
                            children: List.generate(8, (index) {
                              return Container(
                                  padding: const EdgeInsets.all(8),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Row(children: [
                                      Image.asset(
                                        '/images/0322img.jpg',
                                        width: 60,
                                        height: 120,
                                        scale: 2.0,
                                      ),
                                     const SizedBox(width: 30,),
                                      Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'UNIQLO 特級極輕羽絨外套',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'NT 322',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      )
                                    ]),
                                  ));
                            }),
                          ),
                        ],
                      )),
                      Expanded(
                          child: ListView(
                        children: [
                          Column(
                            children: List.generate(8, (index) {
                              return Container(
                                  padding: const EdgeInsets.all(8),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Row(children: [
                                      Image.asset(
                                        '/images/0322img.jpg',
                                        width: 60,
                                        height: 120,
                                        scale: 2.0,
                                      ),
                                     const SizedBox(width: 30,),
                                      Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'UNIQLO 特級極輕羽絨外套',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'NT 322',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      )
                                    ]),
                                  ));
                            }),
                          ),
                        ],
                      )),
                      Expanded(
                          child: ListView(
                        children: [
                          Column(
                            children: List.generate(8, (index) {
                              return Container(
                                  padding: const EdgeInsets.all(8),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Row(children: [
                                      Image.asset(
                                        '/images/0322img.jpg',
                                        width: 60,
                                        height: 120,
                                        scale: 2.0,
                                      ),
                                      const SizedBox(width: 30,),
                                      Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'UNIQLO 特級極輕羽絨外套',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'NT 322',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      )
                                    ]),
                                  ));
                            }),
                          ),
                        ],
                      )),
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

class womanListMobile extends StatelessWidget {
  final bool womanListState;

  const womanListMobile(this.womanListState, {super.key});
  @override
  Widget build(BuildContext context) {
    if (womanListState) {
      return IntrinsicHeight(
        child: Column(children: [
          Expanded(
            child: Column(
              children: List.generate(8, (index) {
                return Container(
                    padding: const EdgeInsets.all(8),
                    child: OutlinedButton(
                      onPressed: () => Null,
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          side: const BorderSide(
                              width: 1.0, color: Colors.black)),
                      child: Row(children: [
                        Image.asset(
                          '/images/0322img.jpg',
                          width: 60,
                          height: 120,
                          scale: 2.0,
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('UNIQLO 特級極輕羽絨外套',
                                style: TextStyle(color: Colors.black)),
                            Text('NT 322',
                                style: TextStyle(color: Colors.black)),
                          ],
                        )
                      ]),
                    ));
              }),
            ),
          )
        ]),
      );
    } else {
      return const Visibility(
          visible: false,
          maintainAnimation: false,
          maintainSize: false,
          maintainState: false,
          child: Text(''));
    }
  }
}

class manListMobile extends StatelessWidget {
  final bool manListState;

  const manListMobile(this.manListState, {super.key});
  @override
  Widget build(BuildContext context) {
    // print(_counter);
    if (manListState) {
      return IntrinsicHeight(
        child: Column(children: [
          Expanded(
            child: Column(
              children: List.generate(8, (index) {
                return Container(
                    padding: const EdgeInsets.all(8),
                    child: OutlinedButton(
                      onPressed: () => Null,
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          side: const BorderSide(
                              width: 1.0, color: Colors.black)),
                      child: Row(children: [
                        Image.asset(
                          '/images/0322img.jpg',
                          width: 60,
                          height: 120,
                          scale: 2.0,
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('UNIQLO 特級極輕羽絨外套',
                                style: TextStyle(color: Colors.black)),
                            Text('NT 322',
                                style: TextStyle(color: Colors.black)),
                          ],
                        )
                      ]),
                    ));
              }),
            ),
          )
        ]),
      );
    } else {
      return const Visibility(
          visible: false,
          maintainAnimation: false,
          maintainSize: false,
          maintainState: false,
          child: Text(''));
    }
  }
}

class accessoriesListMobile extends StatelessWidget {
  final bool accessoriesListState;

  const accessoriesListMobile(this.accessoriesListState, {super.key});
  @override
  Widget build(BuildContext context) {
    // print(_counter);
    if (accessoriesListState) {
      return IntrinsicHeight(
        child: Column(children: [
          Expanded(
            child: Column(
              children: List.generate(8, (index) {
                return Container(
                    padding: const EdgeInsets.all(8),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          side: const BorderSide(
                              width: 1.0, color: Colors.black)),
                      onPressed: () => Null,
                      child: Row(children: [
                        Image.asset(
                          '/images/0322img.jpg',
                          width: 60,
                          height: 120,
                          scale: 2.0,
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('UNIQLO 特級極輕羽絨外套',
                                style: TextStyle(color: Colors.black)),
                            Text('NT 322',
                                style: TextStyle(color: Colors.black)),
                          ],
                        )
                      ]),
                    ));
              }),
            ),
          )
        ]),
      );
    } else {
      return const Visibility(
          visible: false,
          maintainAnimation: false,
          maintainSize: false,
          maintainState: false,
          child: Text(''));
    }
  }
}

class ListMobile extends StatelessWidget {
  const ListMobile({super.key});
  @override
  Widget build(BuildContext context) {
    // print(_counter);
    return const SizedBox(
        child: Visibility(
      visible: false,
      child: Text(''),
    ));
  }
}
