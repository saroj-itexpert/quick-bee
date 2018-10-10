import 'package:flutter/material.dart';
import './loginpage.dart';

/*
Color Codes
#18D191
#FC6A7F
#FFCE56
#45E0EC
#4364A1 facebook
#DF513B google
 */

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xFF18D191),
                    ),
                    child: Icon(Icons.local_offer,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 50.0, top: 60.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xFFFC6A7F),
                    ),
                    child: Icon(Icons.home,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 70.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xFFFFCE56),
                    ),
                    child: Icon(Icons.local_car_wash,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 90.0, top: 0.0 ),
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xFF45E0EC),
                    ),
                    child: Icon(Icons.place,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Quick Bee",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),

                    ),
                  ),



                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context)=> LoginPage(),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                          child: Text("Sign In Wih Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),

                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF4364A1),
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                        child: Text("Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),

                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDF513B),
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                        child: Text("Google",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
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


    );
  }
}
