import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {

var dialog= AlertDialog(
  title: Text("Json parsing error!"),
  content: Text("This error occured due to poor network connection"),
  actions: [
    TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text("Cancel")),
    TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text("Ok"))
  ],
);

    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show dialog"),onPressed: (){showDialog(context: context,
            builder: (context) => dialog);},
        ),
      ),
    );
  }
}
