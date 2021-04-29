import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text.rich(
            TextSpan(
              text: 'Portfolio ',
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: 'App', style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpg'),
                  radius: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Michael Akinsuroju',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                      subtitle: Text(
                        'Mobile App Developer',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 25.0, color: Colors.black38,),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.mail, size: 20.0,color: Colors.black12,),
                                SizedBox(width: 10.0,),
                                Text(
                                  'makinsuroju@gmail.com',
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0, fontWeight: FontWeight.w300, color: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                        child: Text.rich(
                          TextSpan(
                            text: "I am a ",
                            children: <TextSpan>[
                              TextSpan(text: "Full Stack Developer ", style: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.italic,)),
                              TextSpan(text: "currently an intern at "),
                              TextSpan(text: "Zuri Internship training", style: TextStyle(fontStyle: FontStyle.italic,decoration: TextDecoration.underline)),
                              TextSpan(text: " as a Mobile App Developer.\n\n",),
                              TextSpan(text: "Previously worked as a Freelance Web Developer.",),
                            ]
                          ),
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.w300,),
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          child: Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.copyright),
                SizedBox(width: 10.0),
                Text('makinsuroju', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              ],
            )
          )
    ),
      ),
    );
  }
}
