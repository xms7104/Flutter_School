import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_tappay/flutter_tappay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  late FlutterTappay tappay;

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
