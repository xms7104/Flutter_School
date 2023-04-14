import 'package:flutter/material.dart';

class DetailInformation extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailInformation({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double screenHeight;
    double widthMobile;
    if (screenSize.width >= 600) {
      screenHeight = 2;
      widthMobile = 0.6;
    } else {
      screenHeight = 1.3;
      widthMobile = 1;
    }
    print(data['story']);
    return Scaffold(
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            // ignore: unnecessary_null_comparison
            itemCount: data == null ? 0 : 1,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * screenHeight,
                  child: Card(
                      child: Center(
                          child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    '網頁資訊',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Container(
                                    height: 1.0,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.black, Colors.blue],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                data['story'].toString(),
                                style: const TextStyle(fontSize: 14.0),
                              ),
                              const SizedBox(height: 20.0),
                              Column(
                                  children: List.generate(data['images'].length,
                                      (index) {
                                return Container(
                                    margin: const EdgeInsets.all(10),
                                    child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                          maxWidth: 400, // 設置最大寬度為 200
                                        ),
                                        child: FittedBox(
                                          fit: BoxFit.contain, // 設置縮放方式為等比例縮放
                                          child: Image.network(
                                              data['images'][index].toString()),
                                        )));
                              })),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))));
            }));
  }
}



// void main() {
//   runApp(const DetailInformation());
// }

// class DetailInformation extends StatelessWidget {
// const  DetailInformation({super.key});


//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: DetailInformationPage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class DetailInformationPage extends StatefulWidget {
//   const DetailInformationPage({super.key, required this.title});

//   final String title;

//   @override
//   State<DetailInformationPage> createState() => _DetailInformationPageState();
// }

// class _DetailInformationPageState extends State<DetailInformationPage> {

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     double screenHeight;
//     double widthMobile;
//     if (screenSize.width >= 600) {
//       screenHeight = 2;
//       widthMobile = 0.6;
//     }else{
//       screenHeight = 1.1;
//       widthMobile = 1;
//     }
//     return Scaffold(
//       body: 
//       Center(
//       child: SizedBox(
//       width: MediaQuery.of(context).size.width*widthMobile,
//       height: MediaQuery.of(context).size.height*screenHeight,
//       child:Center(
//       child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//       Expanded(
//         child:Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: 
//       Column(
//         children: [
//         SizedBox(
//           width: MediaQuery.of(context).size.width*widthMobile,
//         child:Row(
//         children: [
//         const Text(
//         '網頁資訊',
//         style: TextStyle(fontSize: 16.0),
//       ),
//       const SizedBox(height: 20.0),
//       Container(
//         height: 1.0,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black, Colors.blue],
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//           ),
//         ),
//       ),],
//       ),),
//       const Text(
//         'O.N.S is all about options,which is why we took our staple polo shirt and upgraded it with slubby linen jersey,making it even lighter for those who prefet summer style extra-breezy.',
//         style: TextStyle(fontSize: 14.0),
//       ),
//       const SizedBox(height: 20.0),
//       SizedBox(
//         width: 500, // 容器宽度
//         child: Image.asset(
//           './images/1.jpg',
//           fit: BoxFit.contain, // 按比例缩小并保持宽高比
//         ),
//       ),
//       const SizedBox(height: 20.0),
//       SizedBox(
//         width: 500, // 容器宽度
//         child: Image.asset(
//           './images/2.jpg',
//           fit: BoxFit.contain, // 按比例缩小并保持宽高比
//         ),
//       ),
//       const SizedBox(height: 20.0),
//       SizedBox(
//         width: 500, // 容器宽度
//         child: Image.asset(
//           './images/3.jpg',
//           fit: BoxFit.contain, // 按比例缩小并保持宽高比
//         ),
//       ),
//       const SizedBox(height: 20.0),
//       SizedBox(
//         width: 500, // 容器宽度
//         child: Image.asset(
//           './images/4.jpg',
//           fit: BoxFit.contain, // 按比例缩小并保持宽高比
//         ),
//       ),
//       ],
//       ),
//       ),
//       ),
//       ],
//       )
//       )
//       ,)
//     )
//      );
//   }
// }
