import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:send_whatsapp_message_without_saving_number/settingsRedirect.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final List screens = [
    website1(),
    // website2(),
    // website3(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) => LinearGradient(
                        colors: [
                          // Color(0xFF0050AC),
                          // Color(0xFF9354B9),
                          Colors.blue,
                          Colors.purple,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 55,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.web,
                            size: 28,
                            color: Colors.pink,
                          ),
                          Text(
                            'Visit to Typof',
                            style: TextStyle(fontSize: 22),
                          ),
                          IconButton(
                            onPressed: () {
                        
                              print('object');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.privacy_tip_rounded,
                            size: 28,
                            color: Colors.blue,
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(fontSize: 22),
                          ),
                          IconButton(
                            onPressed: () {
                        
                              print('object');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.dataset_rounded,
                            size: 28,
                            color: Colors.orange,
                          ),
                          Text(
                            'Terms & Conditions',
                            style: TextStyle(fontSize: 22),
                          ),
                          IconButton(
                            onPressed: () {
                        
                              print('object');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.feedback_rounded,
                            size: 28,
                            color: Colors.green,
                          ),
                          Text(
                            'Feedback ',
                            style: TextStyle(fontSize: 22),
                          ),
                          IconButton(
                            onPressed: () {
                        
                              print('object');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.question_answer_rounded,
                            size: 28,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            'FAQs',
                            style: TextStyle(fontSize: 22),
                          ),
                          IconButton(
                            onPressed: () {
                        
                              print('object');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
