import 'package:flutter/material.dart';
import './counter_bloc.dart';
import './counter_event.dart';

void main() {
  runApp(const CarCount());
}

class CarCount extends StatelessWidget {
  const CarCount({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CarCountPage(),
    );
  }
}

class CarCountPage extends StatefulWidget {
  const CarCountPage({super.key});

  @override
  State<CarCountPage> createState() => _CarCountState();
}

class _CarCountState extends State<CarCountPage> {
   final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: 
           InkWell(
            onTap: () => _bloc.counterEventSink.add(ReduceEvent()),
            child: Container(
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  '-',
                  style: TextStyle(
                      color: Colors.white),
                ),
              ),
            ),
          )),
          const SizedBox(width: 20),
          Expanded(child: StreamBuilder(
              stream: _bloc.counter,
              initialData: 1,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Text(
                '${snapshot.data}',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              );
              })),
          const SizedBox(width: 20),
            Expanded(child:InkWell(
            onTap: () => _bloc.counterEventSink.add(AddEvent()),
            child: Container(
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  '+',
                  style: TextStyle(
                      color: Colors.white),
                ),
              ),
            ),
          ),)
        ],
      ),
    ),));
  }
  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}