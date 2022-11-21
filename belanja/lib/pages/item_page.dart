import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                itemArgs.name,
                // textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                itemArgs.price.toString(),
                // textAlign: TextAlign.center,
              ),
            )
          ],
        )
      ])),
    );
  }
}
