import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

import '../widgets/card_item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CardItem(itemArgs: itemArgs),
            )
          ],
        ),
      ),
    );
  }
}
