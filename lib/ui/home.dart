import 'package:flutter/material.dart';

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
      ),
      body: mybody,
    ),
  );
}
