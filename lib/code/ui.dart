import 'dart:ui';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:task1_app/code/video.dart';

import 'music.dart';

MyApp() {
  var mydesign = MaterialApp(
    home: myscaffold(),
    debugShowCheckedModeBanner: false,
  );
  return mydesign;
}

myscaffold() {
  var white = Scaffold(
    appBar: AppBar(
      title: Text(
        "Playlist",
        style: TextStyle(fontSize: 30),
      ),
      backgroundColor: Colors.deepOrangeAccent,
      actions: <Widget>[
        Icon(Icons.share, size: 30),
        SizedBox(width: 20),
        Icon(
          Icons.videocam,
          size: 30,
        )
      ],
    ),
    body: mybody(),
  );
  return white;
}

mybody() {
  var infra = Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.linearToSrgbGamma())),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Card(
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(20),
              child: Text(
                "Falling Skies",
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black87,
                    boxShadow: [
                      BoxShadow(offset: Offset(0, 0), blurRadius: 10)
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG_9467.JPG"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                  highlightColor: Colors.amber[900],
                  onPressed: track1play),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    size: 40,
                  ),
                  highlightColor: Colors.amber,
                  onPressed: track1pause)
            ],
          ),
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Container(
                height: 320,
                width: 400,
                child: ClipRRect(
                  child: Chewie(
                    controller: chewieController,
                  ),
                ),
              )
            ],
          )
        ],
      ));
  return infra;
}
