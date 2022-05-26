import 'package:flutter/material.dart';

class NewPages extends StatefulWidget {
  const NewPages({Key? key}) : super(key: key);

  @override
  State<NewPages> createState() => _NewPagesState();
}

class _NewPagesState extends State<NewPages> {
  int _pageIndex = 0;
  var color_background = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_background,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 8,
        title: Text('Page ${_pageIndex + 1}'),
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.arrow_back),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.help),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.print),
          ),
        ],
      ),
      drawer: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              child: Text('Страница 1'),
              onPressed: () {
                _onTap(0);
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('Страница 2'),
              onPressed: () {
                _onTap(1);
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 30),
            TextButton(
              child: Text(
                'Синий',
                style: TextStyle(
                  color: Colors.blue[900],
                ),
              ),
              onPressed: () {
                color_bg(0);
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text(
                'Красный',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                color_bg(1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
        color: Colors.white,
        margin: EdgeInsets.only(right: 30),
        padding: EdgeInsets.all(130),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Страница  ${_pageIndex + 1}',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Tab1'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Tab2'),
        ],
        currentIndex: _pageIndex,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    setState(() {
      if (_pageIndex != index) {
        _pageIndex = index;
      }
    });
  }

  void color_bg(index) {
    setState(
      () {
        if (index == 0) {
          color_background = Colors.blue;
        } else {
          color_background = Colors.red;
        }
      },
    );
  }
}
