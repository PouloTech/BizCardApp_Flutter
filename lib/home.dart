import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("BizCard"),
      ),
      backgroundColor: Colors.black26,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 400,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(14.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Alpha Barry",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "rickbarry133@gmail.com",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text(
                "GitHub: @PouloTech",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.greenAccent, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)),
    );
  }
}
