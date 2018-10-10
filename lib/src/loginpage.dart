import 'package:flutter/material.dart';
import 'stacked_icon.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {

  var padding = EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0);

  @override
  Widget build(BuildContext context) {
    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.orange,  //or set colow tith Color(0xFF0000FF),
    ));*/

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          
          children: <Widget>[
            StackedIcons(),
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

            Padding(
              padding: padding,
              child: new TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),

            new SizedBox(
              height: 25.0,
            ),

            Padding(
              padding: padding,
              child: new TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
            ),

            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>HomePage(),
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
                        child: Text("Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),

                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: 60.0,
                
                      child: Text("Lost Your Password?",
                        style: TextStyle(
                          color: Color(0xFF18D191),
                          fontSize: 17.0,
                        ),

                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Text("Create a new account",
                      style: TextStyle(
                        color: Color(0xFF18D191),
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
