import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data extends StatelessWidget{

  var nameText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Column(
        children: [
          TextField(
            controller: nameText,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(
                  color: Colors.deepOrange,
                  width: 2
                )
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            String data = nameText.text.toString();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>data()));
          }, child: Text('Save')),
        ],
      ),
    ),);
  }

}