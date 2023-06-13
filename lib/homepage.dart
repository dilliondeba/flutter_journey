import 'package:flutter/material.dart';
import 'package:untitled/wedding.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            automaticallyImplyLeading: true,
            backgroundColor: Theme
                .of(context)
                .colorScheme
                .inversePrimary,
            title: Text("Event"),
        ),
        drawer: Container(
          width: 200,
          child: UserAccountsDrawerHeader(
            accountEmail: Text(
              "Dalu"
            ), accountName: Text("dalu@gmail.com"),
          ),
        ),
        body: Center(

          child: Column(
            children: [
              Container(
                width: 450,
                height: 250,
                child: Image.asset("assets/images/decor 1.jpg"),
              ),


              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "We Are Here To Help You Plan Your Dream Event",
                  style: TextStyle(
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),

// The three inspirations tabs
              Container(
                margin: EdgeInsets.all(6),
                width: 370,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      "Design Inspirations ",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => WeddingPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.all(4),
                            width: 110,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text("WEDDING",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                ),

                                Image.asset('assets/images/decor 1.jpg'),

                                Text("details details",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(4),
                          width: 110,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text("NAMING CEREMONY",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Image.asset('assets/images/decor 1.jpg'),

                              Text("Details",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(4),
                          width: 110,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text("FUNERAL",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),

                              Image.asset('assets/images/decor 1.jpg'),

                              Text("detail",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}