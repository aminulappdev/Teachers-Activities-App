import 'package:flutter/material.dart';

class Info_widget extends StatelessWidget {
  const Info_widget({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: _height/200),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 227, 204),
                    border: Border.all()),
                height: _height / 20,
                width: _width / 20,
                child: Center(
                  child: Text(
                    "At Dept. Office",
                    style: TextStyle(
                        fontSize: _height / 72, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding:  EdgeInsets.only(right: _height/200),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: _height / 40,
                )),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: _height/200),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 227, 204),
                    border: Border.all()),
                height: _height / 20,
                width: _width / 23,
                child: Center(
                  child: Text(
                    "At Class",
                    style: TextStyle(
                        fontSize: _height / 72, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding:  EdgeInsets.only(right: _height/200),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: _height / 40,
                )),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: _height/200),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 227, 204),
                    border: Border.all()),
                height: _height / 20,
                width: _width / 23,
                child: Center(
                  child: Text(
                    "Weekend",
                    style: TextStyle(
                        fontSize: _height / 72, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding:  EdgeInsets.only(right: _height/200),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: _height / 40,
                )),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: _height/200),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 227, 204),
                    border: Border.all()),
                height: _height / 20,
                width: _width / 18,
                child: Center(
                  child: Text(
                    "Out of Campus",
                    style: TextStyle(
                        fontSize: _height / 72, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
         Expanded(
           child: Padding(
                padding:  EdgeInsets.only(right: _height/200),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: _height / 40,
                )),
         ),
        ],
      ),
    );
  }
}
