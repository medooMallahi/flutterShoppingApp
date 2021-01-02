import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/singup.dart';
import 'package:my_app/profile.dart';
import 'login.dart';

class CarouselWidget extends StatefulWidget {
  CarouselWidget() : super();

  @override
  CarouselWidgetState createState() => CarouselWidgetState();
}

class CarouselWidgetState extends State<CarouselWidget> {
  CarouselSlider carouselSlider;
  int current = 0;

  List myImages = [
    'https://images.unsplash.com/photo-1513094735237-8f2714d57c13?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80',
    'https://images.unsplash.com/photo-1609533707860-81048ef25438?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
    'https://images.unsplash.com/photo-1570857502809-08184874388e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2898&q=80'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var j = 0; j < list.length; j++) {
      result.add(handler(j, list[j]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 23),
        child: Stack(
          overflow: Overflow.clip,
          children: [
            Positioned(
              top: -40,
              left: -60,
              child: Image.asset(
                'assets/images/top.png',
                width: 140,
                height: 150,
              ),
            ),
            Positioned(
                bottom: -60,
                right: -60,
                child: Image.asset(
                  'assets/images/top.png',
                  width: 164.23,
                  height: 165.07,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: Column(
                  children: [
                    Text(
                      "Buy your favourites",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("personalization of your\nshopping brands",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 34.0,
                    ),
                  ],
                )),
                carouselSlider = CarouselSlider(
                  height: 300,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  reverse: false,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 1),
                  autoPlayAnimationDuration: Duration(milliseconds: 1300),
                  pauseAutoPlayOnTouch: Duration(seconds: 12),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      current = index;
                    });
                  },
                  items: myImages.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                imgUrl,
                                fit: BoxFit.fill,
                              ),
                            ));
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(myImages, (index, url) {
                    return Container(
                      width: current == index ? 28.0 : 10,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(25.0),
                        color:
                            current == index ? Colors.black87 : Colors.black12,
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ProfileScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Start Shopping",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text("or"),
                    SizedBox(
                      width: 12.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SingUp();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
