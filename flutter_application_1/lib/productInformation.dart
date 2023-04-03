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
