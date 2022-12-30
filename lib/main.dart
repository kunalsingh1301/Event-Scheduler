import 'package:eventscheduler/new_event.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Event Scheduler"),
          backgroundColor: Colors.blue[900],),
        body:
        ListView.builder(
            padding: EdgeInsets.all(40),
            itemCount: _list.length,
            // itemBuilder: ((context, index) => _list[index])
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  onTap: () {},
                  title: (_list[index]),
                ),
              );
            }
        ),
        backgroundColor: Colors.lightBlueAccent,

        floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                onPressed: () async {
                  String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                  setState(() {
                    _list.add(Text(newText));
                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.blue[900],
              );
            }
        ),
      ),
    );
  }

}