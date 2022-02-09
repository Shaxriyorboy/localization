import 'package:flutter/material.dart';
import 'package:localithation/pages/home_page.dart';
import 'package:localithation/pages/homework_page.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tanlov page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              minWidth: 200,
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.id);
              },
              child: Text("Open lesson page"),
            ),
            MaterialButton(
              color: Colors.blue,
              minWidth: 200,
              onPressed: () {
                Navigator.of(context).pushNamed(HomeworkPage.id);
              },
              child: Text("Open Homework page"),
            ),
          ],
        ),
      ),
    );
  }
}
