// ignore_for_file: deprecated_member_use

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();
  String selectedCountryCode = '';
  final TextEditingController a = TextEditingController();
  final myController = TextEditingController();
// TextField(controller: myController);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 865,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color(0xFF0050AC),
                    Color(0xFF9354B9),
                  ],
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontFamily: 'Avenir'),
                          ),
                          TextSpan(
                            text: 'Hey',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: 'Avenir'),
                          ),
                          TextSpan(
                            text: 'Its',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Avenir'),
                          ),
                          TextSpan(
                            text: 'Me ',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: 'Avenir'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Send ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontFamily: 'Avenir'),
                          ),
                          TextSpan(
                            text: 'WhatsApp ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: 'Avenir'),
                          ),
                          TextSpan(
                            text: 'Message',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontFamily: 'Avenir'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Without Saving Number',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Avenir',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        child: Image(
                          image: AssetImage(
                            'assets/whatsapp.png',
                          ),
                        )),
                  ],
                ),
              ),
              Positioned(
                top: 250,
                child: Container(
                  height: 600,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(60),
                      topEnd: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
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
                          child: CountryCodePicker(
                            onChanged: (CountryCode? countryCode) {
                              countryCodeController.text =
                                  countryCode!.dialCode!;
                              selectedCountryCode = countryCodeController.text;
                              print(
                                  selectedCountryCode); // Here the county code will be selected.
                            },
                            showDropDownButton: true,
                            initialSelection: 'IN',
                            favorite: const ['+91', 'United States'],
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '         Enter Phone Number',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                        alignment: Alignment.center,
                        height: 65,
                        width: 320,
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
                            borderRadius: BorderRadius.circular(25)),
                        child: GestureDetector(
                          onLongPress: () async {
                            final text = await Clipboard.getData('text/plain');
                            if (text != null) {
                              myController.text = text.text!;
                              print(myController);
                            }
                          },
                          child: TextField(
                            controller: phoneController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone_rounded),
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: 'Ex- 9040660463',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1),
                            ),
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.green,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '         Enter Message',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                color: Colors.black,
                                fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 20, 0),
                            height: 170,
                            width: 320,
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
                            child: TextField(
                              textAlign: TextAlign.start,
                              controller: messageController,
                              maxLines: 6,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.message_rounded,
                                ),
                                errorBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 70),
                                hintText: 'Enter Your Message Here',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1),
                              ),
                              keyboardType: TextInputType.text,
                              cursorColor: Colors.green,
                              cursorHeight: 30,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 150,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )),
                          onPressed: () async {
                            FocusManager.instance.primaryFocus?.unfocus();

                            var whatsappUrl =
                                "whatsapp://send?phone=${selectedCountryCode + phoneController.text}" +
                                    "&text=${Uri.encodeComponent(messageController.text)}";

                            try {
                              // ignore: deprecated_member_use
                              launch(whatsappUrl);
                              print("Whatsapp URL :" + whatsappUrl.toString());
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('SEND '),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Made With ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: 'Avenir'),
                            ),
                            TextSpan(
                              text: '❤️ ',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Avenir'),
                            ),
                            TextSpan(
                              text: 'Typof',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: 'Avenir'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
