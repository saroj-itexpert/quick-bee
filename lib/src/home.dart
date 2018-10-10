import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _bottomNavigationIndex,
          onTap: (int index){
            setState(() {
              _bottomNavigationIndex = index;
            });

          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xFF29D091),
          items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text(""), ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('')),
            new BottomNavigationBarItem(
                icon: Icon(Icons.add_box), title: Text('')),
            new BottomNavigationBarItem(
                icon: Icon(Icons.beenhere), title: Text('')),
            new BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('')),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Explore",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFD7384),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                Icons.drive_eta,
                                color: Colors.white,
                              ),
                              new Text(
                                "Motors",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 2.5, right: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2BD093),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Classified",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.5, right: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFC7B4D),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: Icon(
                                          Icons.beenhere,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Service",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF53CEDB),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: Icon(
                                          Icons.account_balance,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Properties",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1B069),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: Icon(
                                          Icons.art_track,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Jobs",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Popular Searches",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2BD093),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Play Station",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/08/16/19/56/wedding-rings-3611277_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Jewellery & Watch",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/09/20/13/52/board-453758_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Electronics",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Trending",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2BD093),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/05/02/21/50/home-office-336378_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Laptops",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/08/29/14/53/photo-431119_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Cameras",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/09/10/11/42/quadrocopter-1658967_960_720.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Drones",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Recent Offers",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2BD093),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/06/25/17/22/smart-watch-821559_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Smart Watches",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Fruits",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/04/06/22/11/auto-2209439_960_720.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Motors",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Popular Choices",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "View All",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2BD093),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/04/07/06/53/bmw-1313343_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Bikes",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/05/03/00/42/vw-camper-336606_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Vacation",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Gym & Fitness",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


