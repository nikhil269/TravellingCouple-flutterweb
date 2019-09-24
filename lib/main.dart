import 'package:flutter/material.dart';
import 'responsivelayout.dart';
import 'package:travellingcouple/responsivelayout.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout.isSmallScreen(context)
          ? Container(
              child: Center(
                child: Text(
                  "Please Select as a Desktop View in Your Brower and see \nFor More Info Visit http://nikhil.cf/",
                  style: TextStyle(color: Colors.red, fontSize: 18.0),
                ),
              ),
            )
          : Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "YOUR",
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("WEBSITE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                      ),
                      Row(
                        children: <Widget>[
                          TabBar(
                            controller: tabController,
                            indicatorColor: Colors.black,
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: Colors.grey,
                            unselectedLabelColor: Colors.grey.withOpacity(0.6),
                            isScrollable: true,
                            tabs: <Widget>[
                              Tab(
                                child: Text("Home",
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Tab(
                                child: Text("About us",
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Tab(
                                child: Text("Work",
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Tab(
                                child: Text("Info",
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Colors.red[600],
                            onPressed: () {},
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MainPage(),
                ],
              ),
            ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Couple \nTaking Photos",
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 12.0,
                ),
                ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: 400.0, maxWidth: 400.0),
                  child: Text(
                    "While we LOVE family pictures, we believe in the importance of cute couple pics too.  There’s just something magical about the way a picture can capture and preserve our memories and feelings.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontFamily: 'Quicksand'),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.red[600],
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Learn More",
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 550,
            width: 600,
            child: Image.network(
              "https://www.allcleartravel.co.uk/wp-content/uploads/shutterstock_662504182_clipped_rev_2-300x201.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
