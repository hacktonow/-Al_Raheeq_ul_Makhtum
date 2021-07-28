import 'package:flutter/material.dart';
import 'package:share/share.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg.png'),
                        fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/applogo.jpg",
                            height: 150,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                  "جو شخص ہر فرض نماز کے بعد آیت الکرسی پڑھے وہ اگلی نماز تک اللہ تعالی کے ذمے میں رہے گا",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'jameel')),
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 350),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/list1');
                      },
                      child: Container(
                        width: 300,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.84),
                              spreadRadius: 5,
                              blurRadius: 33,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 30,
                                )),
                            SizedBox(
                              width: 80,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "فہرست مضامین",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'jameel'))
                            ])),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/firstp');
                      },
                      child: Container(
                        width: 300,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.84),
                              spreadRadius: 5,
                              blurRadius: 33,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 30,
                                )),
                            SizedBox(
                              width: 70,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "شروع کریں ",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'jameel'))
                            ])),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 300,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.84),
                              spreadRadius: 5,
                              blurRadius: 33,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 30,
                                )),
                            SizedBox(
                              width: 80,
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "جاری رکھیں ",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'jameel'))
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
