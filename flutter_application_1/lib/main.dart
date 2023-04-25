import 'package:flutter/material.dart';
import 'package:flutter_tappay/flutter_tappay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FlutterTappay tappay;

  String _token = '';

  @override
  void initState() {
    super.initState();

    // Initialize Tappay
    tappay = FlutterTappay();

    // Handle token received
    tappay.onTokenReceived.listen((data) {
      setState(() {
        _token = data;
      });
    }, onError: (err) {
      print("$err");
    }, onDone: () {
      print("done");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tappay Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Token: $_token',
              ),
              ElevatedButton(
                onPressed: () async {
                  // Show Tappay Payment View
                  await FlutterTappay.showPayment(
                      title: "Custom Title",
                      btnName: "Custom BtnName",
                      appKey:
                          "app_whdEWBH8e8Lzy4N6BysVRRMILYORF6UxXbiOFsICkz0J9j1C0JUlCHv1tVJC",
                      appId: 11334,
                      serverType: FlutterTappayServerType.Sandbox);
                },
                child: const Text('Pay with Tappay'),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
