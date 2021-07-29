import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../listTile_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd");

  List<Data> tiledata = [
    Data(
        title: "Small stuff adds up1!",
        description:
            "last month In Informatics, dummy data is benign information that does not contain any useful data, but serves to reserve space where real data is nominally present.For testing, dummy",
        date: DateTime.parse("1998-05-05")),
    Data(
        title: "Small stuff adds up2!",
        description:
            "last month In Informatics, dummy data is benign information that does not contain any useful data, but serves to reserve space where real data is nominally present.For testing, dummy",
        date: DateTime.parse("1998-05-05")),
    Data(
        title: "Small stuff adds up3!",
        description:
            "last month In Informatics, dummy data is benign information that does not contain any useful data, but serves to reserve space where real data is nominally present.For testing, dummy",
        date: DateTime.parse("1998-05-05")),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.black.withOpacity(.05),
                                    spreadRadius: 5,
                                    offset: Offset(0, 5))
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.white12,
                              child: ClipOval(
                                child: Image(
                                  image: AssetImage(
                                    "assets/images/watch.jpg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("Welcome back, Marvin"),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                                "Your financial situation is looking good"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      right: 5,
                      top: 1,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert))),
                ],
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, right: 15, left: 15, bottom: 0),
                          child: new LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 35,
                            // animation: true,
                            lineHeight: 10.0,
                            // animationDuration: 2000,
                            percent: 0.76,
                            // center: Text("90.0%"),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 17, bottom: 20),
                            child: Text("Beginners Level"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, right: 37, bottom: 20),
                            child: Text("XP 380/500"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                // indicatorColor: Colors.red,
                //  indicatorPadding: EdgeInsets.only(right: 5, left: 5),
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0, color: Colors.red),
                    insets: EdgeInsets.symmetric(horizontal: 14.0)),
                tabs: [
                  Tab(
                    child: Text(
                      "Today",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Monday",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Yearly",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Future",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                        color: Colors.grey[200],
                        child: Column(
                          children: [
                            Expanded(child: listTile() // Text("data")
                                ),
                          ],
                        )),
                    Container(
                        color: Colors.grey[200],
                        child: Center(child: Text("data"))),
                    Container(
                        color: Colors.grey[200],
                        child: Center(child: Text("data"))),
                    Container(
                        color: Colors.grey[200],
                        child: Center(child: Text("data"))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile() {
    return Container(
      child: ListView(
        children: tiledata.map((e) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: Card(
              color: Colors.pinkAccent,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.0),
              ),
              child: Container(
                height: 170,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Stack(
                  children: [
                    /*Positioned(
                      top: 50,
                      left: 50,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 80,
                          child: Text(e.description!)),
                    ),*/
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 8, right: 8),
                                    child: CircleAvatar(),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18.0, left: 1),
                                        child: Text(e.title!),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(dateFormat.format(e.date!)),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 55.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Text(e.description!)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 58.0),
                                child: ElevatedButton(
                                  child: Text("Setup a Goal"),
                                  onPressed: () => print("it's pressed"),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                  ),
                                )),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.favorite))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
