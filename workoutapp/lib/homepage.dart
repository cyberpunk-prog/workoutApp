import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: <Widget>[
            Container(
              child: Text(
                'Hello Ankur!',
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              //to separate text from search button
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //Find A Workout
                  child: Row(
                    children: [
                      Text(
                        'FIND A',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Workout',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
                //Search Icon
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      //Legs and
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Row(
                          children: [
                            NeumorphicText(
                              'Legs ',
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(12)),
                                depth: 12,
                                lightSource: LightSource.topLeft,
                                color: Colors.white,
                              ),
                              textStyle: NeumorphicTextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            NeumorphicText(
                              'and ',
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: 12,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              textStyle: NeumorphicTextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                      //Glutes Workout
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 1),
                        child: Row(
                          children: [
                            NeumorphicText(
                              '          Glutes ',
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: 12,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              textStyle: NeumorphicTextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            NeumorphicText(
                              'workout ',
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: 12,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              textStyle: NeumorphicTextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          NeumorphicIcon(
                            Icons.arrow_circle_up,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          NeumorphicText(
                            'Advanced',
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(12)),
                                depth: 12,
                                lightSource: LightSource.topLeft,
                                color: Colors.white),
                            textStyle: NeumorphicTextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          NeumorphicIcon(
                            Icons.timelapse_sharp,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          NeumorphicText(
                            '   4.5 Min',
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(12)),
                                depth: 12,
                                lightSource: LightSource.topLeft,
                                color: Colors.white),
                            textStyle: NeumorphicTextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      NeumorphicButton(
                        onPressed: () => {},
                        child: NeumorphicText(
                          'Start Workout',
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              depth: 12,
                              lightSource: LightSource.topLeft,
                              color: Colors.grey),
                          textStyle:
                              NeumorphicTextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //today's activity row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today\'s Activity',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
                Row(
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              //color: Colors.black54,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 150,
                        height: 80,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicIcon(
                                Icons.timelapse,
                                size: 30,
                                style: NeumorphicStyle(color: Colors.black),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    'TRAINING',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  NeumorphicText(
                                    '07:05 AM',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 150,
                        height: 80,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicIcon(
                                Icons.sports_football,
                                size: 30,
                                style: NeumorphicStyle(color: Colors.black),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    'STEPS',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  NeumorphicText(
                                    '1,228',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 150,
                        height: 80,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicIcon(
                                Icons.home_sharp,
                                size: 30,
                                style: NeumorphicStyle(color: Colors.black),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    'CALORIES',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  NeumorphicText(
                                    '829',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 150,
                        height: 80,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicIcon(
                                Icons.close_fullscreen_outlined,
                                size: 30,
                                style: NeumorphicStyle(color: Colors.black),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  NeumorphicText(
                                    'BPM',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  NeumorphicText(
                                    '88.9 bpm',
                                    style: NeumorphicStyle(
                                        shadowDarkColor: Colors.black,
                                        shadowLightColorEmboss: Colors.white,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: Neumorphic.MAX_INTENSITY,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.black),
                                    textStyle: NeumorphicTextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            //today's activity row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily Activity',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
                Row(
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              //color: Colors.black54,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 90,
                        height: 150,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicText(
                                'MON',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              NeumorphicText(
                                '08',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 90,
                        height: 150,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicText(
                                'TUE',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              NeumorphicText(
                                '09',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 90,
                        height: 150,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicText(
                                'WED',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              NeumorphicText(
                                '10',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 90,
                        height: 150,
                        // color: Colors.blue,
                        child: NeumorphicButton(
                          padding: EdgeInsets.all(10),
                          style: NeumorphicStyle(
                            color: Colors.white,
                            lightSource: LightSource.topRight,
                          ),
                          onPressed: () => {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicText(
                                'THU',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              NeumorphicText(
                                '11',
                                style: NeumorphicStyle(
                                    shadowDarkColor: Colors.black,
                                    shadowLightColorEmboss: Colors.white,
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    depth: Neumorphic.MAX_INTENSITY,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.black),
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
