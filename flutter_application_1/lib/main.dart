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
              child: Expanded(
                flex: 10,
                child: Steps())
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
                                      const SizedBox( width: 30,),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                      const SizedBox( width: 30,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                      const SizedBox( width: 30,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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

class Step {
  Step(
    this.title,
    [this.isExpanded = false]
  );
  String title;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('女裝'),
    Step('男裝'),
    Step('配件'),
  ];
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }
  Widget _renderSteps() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          
          headerBuilder: (BuildContext context, bool isExpanded) {
            return 
            ListTile(
              textColor: Colors.black,
              title: Text(step.title),
            );
          },
          body: 
          Column(children: [
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
         ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
           leading: Image.asset('/images/0322img.jpg'),
              title: const Text('UNIQLO 特級極輕羽絨外套'),
              subtitle: const Text('NT 322') ,
          )
          ],),
          
          
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
