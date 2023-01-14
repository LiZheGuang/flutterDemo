// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleIcons = Container(
        width: 150,
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.add_link,
                color: Colors.blue,
              ),
              Text(
                '分类 ： 多媒体金丝狐',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              )
            ]));

    // title
    Widget titleSection = Container(
      padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: const EdgeInsets.only(bottom: 2),
                child: const Text(
                  'Game:一篇文章祝你披荆斩棘',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Text(
                '这是一段文字简介',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 10,
                ),
              ),
              titleIcons,
            ]),
          ),
          /*3*/
          const Icon(
            Icons.home,
            color: Color.fromARGB(255, 174, 87, 87),
          )
        ],
      ),
    );

    // Widget textContent = const Padding(
    //   padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
    //   child: Text(
    //       'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    //       'Alps. Situated 1,578 meters above sea level, it is one of the '
    //       'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    //       'half-hour walk through pastures and pine forest, leads you to the '
    //       'lake, which warms to 20 degrees Celsius in the summer. Activities '
    //       'enjoyed here include rowing, and riding the summer toboggan run.',
    //       softWrap: true),
    // );
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   // title: const Text('Welcome to Flutter'),
        // ),
        body: ListView(
          children: [
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            titleSection,
            const Divider(),
            // textContent,
          ],
        ),
      ),
    );
  }
}
