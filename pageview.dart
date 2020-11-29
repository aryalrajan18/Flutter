import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pagechanged = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: Text('Page view'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  pageController.animateToPage(--pagechanged,
                      duration: Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                }),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  pageController.animateToPage(++pagechanged,
                      duration: Duration(milliseconds: 250),
                      curve: Curves.bounceInOut);
                }),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                pageSnapping: false,
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pagechanged = index;
                  });
                },
                children: [
                  Container(
                    color: Colors.indigo,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
            Expanded(child: Container())
          ],
        ));
    return scaffold;
  }
}
