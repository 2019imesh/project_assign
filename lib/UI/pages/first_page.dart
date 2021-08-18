import 'dart:ui';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),*/

      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: SingleChildScrollView(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/watch.jpg")),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.center,
                                  colors: [
                                    Colors.black.withOpacity(.5),
                                    Colors.transparent,
                                  ],
                                  stops: [
                                    0.0,
                                    20
                                  ])),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, bottom: 5),
                              child: Text(
                                '\$165.98',
                                style: TextStyle(
                                    color: Color(0xff123456), fontSize: 23),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 25.0, top: 1),
                              child: Icon(
                                Icons.account_box,
                              ),
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Band Type",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          Text("Strap"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Band Width",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          Text("18 mm"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bezel Material",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          Text("Stainless Steel"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0,right: 25),
                      child: Text(
                        "The Nixon,C39 Leather series features a stainless steel 36mm case, with a fixed bezel, a white dial and a scratch resistant mineral crystal sub-dials one 60 seconds. The 18mm leather band is fitted with a buckle clasp. This beautiful wristwatch.",
                        style: TextStyle(fontSize: 16.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12,right: 25),
                      child:
                          Text("2 Year WatchCenter Warranty and keep receipt."),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: SizedBox(
                        height: 45,
                        width: MediaQuery.of(context).size.width - 130,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.brown.withOpacity(.6),
                                          width: 2.0)))),
                          onPressed: () {
                            //ADD TO BAG 
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'ADD TO BAG',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            /* Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
            ),*/
            Positioned(
              left: 10,
              top: 20,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
