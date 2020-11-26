import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello first project'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('hello first demo bro'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
        ),
      ),
    ));
