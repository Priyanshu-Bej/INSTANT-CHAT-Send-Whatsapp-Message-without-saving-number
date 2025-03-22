import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class website1 extends StatefulWidget {
  const website1({super.key});

  @override
  State<website1> createState() => _Website1State();
}

class _Website1State extends State<website1> {
  var initialUrl = 'https://www.typof.com/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse(initialUrl)),
            ),
          ),
          Text('data'),
        ],
      ),
    );
  }



  
}