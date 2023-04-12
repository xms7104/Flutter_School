import 'package:flutter/material.dart';
import './WomenAPI.dart';
import './menAPI.dart';
import './accessoriesAPI.dart';

void main() {
  runApp(const ProductListMobile());
}

class ProductListMobile extends StatelessWidget {
  const ProductListMobile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'StyLish Product Page',
      home: ProductListMobilePage(),
    );
  }
}

class ProductListMobilePage extends StatefulWidget {
  const ProductListMobilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductListMobileState createState() => _ProductListMobileState();
}

class _ProductListMobileState extends State<ProductListMobilePage> {
  final Map<String, bool> _visibility = {
    '女裝': false,
    '男裝': false,
    '配件': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildListItem('女裝'),
          Visibility(
            visible: _visibility['女裝'] ?? false,
            child: _buildCard('女裝'),
          ),
          _buildListItem('男裝'),
          Visibility(
            visible: _visibility['男裝'] ?? false,
            child: _buildCard('男裝'),
          ),
          _buildListItem('配件'),
          Visibility(
            visible: _visibility['配件'] ?? false,
            child: _buildCard('配件'),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _visibility[text] = !_visibility[text]!;
        });
      },
      child: ListTile(
          title: Center(
        child: Text(text),
      )),
    );
  }

  Widget _buildCard(String text) {
    if (_visibility[text] == true && text == '女裝') {
      return const SizedBox(height: 800, child: WomenDate());
    } else if (_visibility[text] == true && text == '男裝') {
      return const SizedBox(height: 400, child: MenDate());
    } else {
      return const SizedBox(height: 600, child: AccessoriesDate());
    }
  }
}
