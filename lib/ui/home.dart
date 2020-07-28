import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

mylinkedin() {
  print("object");
  _launchURL("www.google.com");
}

_launchURL(url) async {
  //const url = 'https://www.linkedin.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

myapp1() {
  var boxDecoration = BoxDecoration(
      image: const DecorationImage(
          image: NetworkImage(
              "https://i.pinimg.com/564x/ec/1f/71/ec1f713f49cc6d6556184969ac9d2efd.jpg"),
          fit: BoxFit.cover));
  var boxDecoration1 = BoxDecoration(
    color: Color(0xff7c94b6),
    border: Border.all(
      color: Colors.blue.shade900,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(50),
  );

  var mybody = Container(
    width: double.infinity,
    height: double.infinity,
    //color: Colors.blue.shade900,
    margin: EdgeInsets.all(5),
    alignment: Alignment.center,
    decoration: boxDecoration,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          //padding: EdgeInsets.all(60),
          //padding: EdgeInsets.only(top: 15, left: 25),
          //alignment: Alignment.center,
          margin: EdgeInsets.all(50),
          width: 300,
          height: 200,
          //color: Colors.blueGrey.shade500,
          decoration: boxDecoration1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Azeemushan Ali",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text(
                    "   azeemushanali@gmail.com",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          //margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4E03AQFdzcEEvJg9Yg/profile-displayphoto-shrink_400_400/0?e=1601510400&v=beta&t=cgVfEFtGOuVXyx0KkivoZXJC6Uu_-4TmtXKqGQ7UW5M"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.blueGrey.shade900,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(50),
          ),

          height: 100,
          width: 100,
          //child: Text("data"),
          //color: Colors.amberAccent,
        ),
      ],
    ),
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Business Card"),
        //backgroundColor: Colors.indigoAccent[900],
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.github),
              onPressed: () {
                _launchURL("https://github.com/azeemushanali");
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.linkedin),
              onPressed: () {
                _launchURL("https://www.linkedin.com/in/azeemushan-ali/");
              }),
          IconButton(
              icon: Icon(Icons.alternate_email),
              onPressed: () {
                _launchURL(
                    "mailto:azeemushanali@gmail.com?subject=Nice%20App%20Azeem&body=My%20Feedback%20is");
              }),
          IconButton(
              icon: Icon(Icons.add_call),
              onPressed: () {
                _launchURL("tel:+919876543210");
              }),
        ],
      ),
      body: mybody,
    ),
  );
}
