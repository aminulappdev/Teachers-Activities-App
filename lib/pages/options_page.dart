import 'package:cse/pages/teachers_page.dart';
import 'package:cse/pages/views.dart';
import 'package:flutter/material.dart';

class Option_page extends StatelessWidget {
  const Option_page({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Options"),
        ),
        body: Container(
          height: _height,
          width: _width,
          color: Color.fromRGBO(32, 80, 170, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Views_page()),
                        );
                      },
                      child: Text(
                        "Views Page",
                        style: TextStyle(
                            fontSize: _height / 45,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teachers_page()),
                        );
                      },
                      child: Text(
                        "Tachers page",
                        style: TextStyle(
                            fontSize: _height / 45,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
