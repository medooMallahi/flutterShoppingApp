import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  var index = 0;

  var profileImage =
      'https://images.unsplash.com/photo-1604572689968-e608a2332849?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2689&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            icon: Icon(Icons.menu),
          ),
        ],
        title: Text(
          "STYLISH",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 1, right: 3),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13, right: 14),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            profileImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "1,235",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "posts",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "4m",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "posts",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "256",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "posts",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 60,
                            left: 35,
                            child: SizedBox(
                              width: 220,
                              height: 30,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                elevation: 0,
                                color: Colors.black12,
                                onPressed: () {},
                                child: Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 13, right: 0, top: 15, bottom: 6),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Home Furniture",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Home accessories, some information about us",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Contact us:",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("+925 987 952 2365",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                        )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Chennai, India",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 30,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 0,
                          color: Colors.black12,
                          onPressed: () {},
                          child: Text(
                            "Add Product",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 110,
                        height: 30,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 0,
                          color: Colors.black12,
                          onPressed: () {},
                          child: Text(
                            "Share",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 110,
                        height: 30,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 0,
                          color: Colors.black12,
                          onPressed: () {},
                          child: Text(
                            "Contact us",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    padding: EdgeInsets.all(4.0),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    // scrollDirection: Axis.vertical,
                    children: <String>[
                      'https://images.unsplash.com/photo-1461218779480-bb61b6be1924?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80',
                      'https://images.unsplash.com/photo-1546555648-fb7876c40c58?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80',
                      'https://images.unsplash.com/photo-1501045661006-fcebe0257c3f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
                      'https://images.unsplash.com/photo-1494336934272-f0efcedfc8d7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1951&q=80',
                      'https://images.unsplash.com/photo-1501784773259-a67ac25323ed?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80',
                      'https://images.unsplash.com/photo-1575277340599-43db25b63b6f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
                      'https://images.unsplash.com/photo-1483095348487-53dbf97d8d5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
                      'https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1031&q=80',
                      'https://images.unsplash.com/photo-1529693662653-9d480530a697?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2689&q=80'
                    ].map((String url) {
                      return GridTile(
                          child: Image.network(url, fit: BoxFit.cover));
                    }).toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
