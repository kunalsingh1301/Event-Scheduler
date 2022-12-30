import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("New Event"),
      backgroundColor: Colors.blue[900],
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,children: [
        Center(
          child: SizedBox(
            height: 100,
            width: 400,
            child: TextField(
              maxLines: 5,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.all(40),
                prefixIcon: Icon(Icons.add_card,color: Colors.white),
                border: InputBorder.none,
                labelText: "Event",
                labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                filled: true,
                fillColor: Colors.blue,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              controller: _textEditingController,
            ),
          ),
        ),
        SizedBox(height: 18,),
        Builder(
            builder: (context) {
              return Center(
                child: SizedBox(
                  height: 60,
                  width: 480,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.2,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        padding: const EdgeInsets.all(30.0),
                        minimumSize: const Size.fromHeight(60),
                      ),
                      onPressed: () {
                        String newEventText = _textEditingController.text;
                        Navigator.of(context).pop(newEventText);
                      }, child: const Text("ADD")),
                ),
              );
            }
        ),
      ],
      ),
      backgroundColor: Colors.lightBlueAccent,
    );
  }

}