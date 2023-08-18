import 'package:flutter/material.dart';
import 'package:layot/blank.dart';

class Guides extends StatelessWidget {
  const Guides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(),
              child: Text('Drawer'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            titleSection,
            SizedBox(
              height: 10,
            ),
            champButtonSection,
            SizedBox(
              height: 10,
            ),
            equiqButtonSection,
            SizedBox(
              height: 10,
            ),
            runeButtonSection,
            SizedBox(
              height: 8,
            ),
            newsButtonSection,
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                homeButton,
                configButton
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 5),
              child: const Text(
                'Welcome To Rift Guides',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            )
          ],
        ),
      )
    ],
  ),
);

Widget champButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.lightBlue[50],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'images/Tank_icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'Champions',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget equiqButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.lightBlue[50],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'images/Mage_icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'Items',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget runeButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.lightBlue[50],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'images/Rune_icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'Runes',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget newsButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.lightBlue[50],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'images/icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'News And Update',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget homeButton = Container(
  decoration: BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.all(Radius.circular(30))
  ),
  padding: EdgeInsets.all(10),
  child:
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.home),
      ElevatedButton(onPressed: () {}, child: Text('Home'))
    ],
  ),
);

Widget configButton = Container(
  decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))
  ),
  padding: EdgeInsets.all(10),
  child:
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.settings),
      ElevatedButton(onPressed: () {}, child: Text('Settings'))
    ],
  ),
);

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blank()));
            },
            icon: Icon(Icons.arrow_forward))
      ],
    );
  }
}
