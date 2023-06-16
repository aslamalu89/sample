import 'package:flutter/material.dart';

class Rad extends StatefulWidget {
  const Rad({Key? key}) : super(key: key);

  @override
  State<Rad> createState() => _RadState();
}

class _RadState extends State<Rad> {
  String? radi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RADIO BUTTON'),
      centerTitle: true,),
      body: Column(
        children: [
          Text("GENDER"),
          ListTile(
            title: Text("MALE"),
            leading: Radio(
              value: 'male',
              groupValue: radi,
              onChanged: (radio){
                setState(() {
                  radi=radio;
                });
              },
            ),

          ),
          ListTile(
            title: Text("FEMALE"),
            leading: Radio(
              value: 'female',
              groupValue: radi,
              onChanged: (radio){
                setState(() {
                  radi=radio;
                });
              },
            ),

          ),
          ListTile(
            title: Text("OTHER"),
            leading: Radio(
              value: 'other',
              groupValue: radi,
              onChanged: (radio){
                setState(() {
                  radi=radio;
                });
              },
            ),

          ),
        ],
      ),

    );
  }
}
