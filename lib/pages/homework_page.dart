import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomeworkPage extends StatefulWidget {
  const HomeworkPage({Key? key}) : super(key: key);
  static const String id = "homework_page";

  @override
  _HomeworkPageState createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homework"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Text("flutter".tr(),style: TextStyle(fontSize:25),textAlign: TextAlign.center,),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    context.locale = Locale("en", "US");
                  },
                  child: Text("English",style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    context.locale = Locale("ko", "KP");
                  },
                  child: Text("Korean",style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    context.locale = Locale("ja", "JP");
                  },
                  child: Text("Japanese",style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
