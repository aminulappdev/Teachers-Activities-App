import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Teachers_page extends StatefulWidget {
  const Teachers_page({super.key});

  @override
  State<Teachers_page> createState() => _Teachers_pageState();
}

class _Teachers_pageState extends State<Teachers_page> {
  @override
  Widget build(BuildContext context) {
    final tar_ctrl = TextEditingController();
    final raz_ctrl = TextEditingController();
    final rid_ctrl = TextEditingController();
    final par_ctrl = TextEditingController();
    final mun_ctrl = TextEditingController();
    final sha_ctrl = TextEditingController();
    final zah_ctrl = TextEditingController();
    final mas_ctrl = TextEditingController();
    final jub_ctrl = TextEditingController();

    List Teachers_data = [
      {
        "name": 'Md Ab.Razzak',
        "des": 'Senior Lecturer & Chairman',
        "num": "01746-671227",
        "img": "assets/razzak.jpg",
        "data": "Razzak",
        "ctrl": raz_ctrl
      },
      {
        "name": 'Partho Sarati Sarker',
        "des": 'Asst. Professor & Co-Chairman',
        "num": "01926-203351",
        "img": "assets/partho.jpg",
        "data": "Partho",
        "ctrl": par_ctrl
      },
      {
        "name": 'Md. Tariqul Islam',
        "des": 'Lecturer',
        "num": "01842-733104",
        "img": "assets/tariqul.jpg",
        "data": "Tariqul",
        "ctrl": tar_ctrl
      },
      {
        "name": 'Md. Riadul Islam',
        "des": 'Lecturer',
        "num": "01842-611852",
        "img": "assets/riadul.jpg",
        "data": "Riadul",
        "ctrl": rid_ctrl
      },
      {
        "name": 'Md. Masudur Rahman',
        "des": 'Lecturer',
        "num": "01731-279192",
        "img": "assets/masud.jpg",
        "data": "Masud",
        "ctrl": mas_ctrl
      },
      {
        "name": 'Md. Mahadi Hassan Shaon',
        "des": 'Lecturer',
        "num": "01721-855838",
        "img": "assets/shaon.jpg",
        "data": "Shaon",
        "ctrl": raz_ctrl
      },
      {
        "name": 'Md. Shahin',
        "des": 'Lecturer',
        "num": "01736-125148",
        "img": "assets/shahin.jpg",
        "data": "Shahin",
        "ctrl": sha_ctrl
      },
      {
        "name": 'Muntasir Rahman',
        "des": 'Lecturer',
        "num": "01785-566674",
        "img": "assets/muntasir.jpg",
        "data": "Muntasir",
        "ctrl": mun_ctrl
      },
      {
        "name": 'Md. Zahid Akon',
        "des": 'Lecturer',
        "num": "01703-436278",
        "img": "assets/zahid.jpg",
        "data": "Zahid",
        "ctrl": zah_ctrl
      },
      {
        "name": 'Zubair',
        "des": 'Lecturer',
        "num": "017",
        "img": "assets/masud.jpg",
        "data": "Jubair",
        "ctrl": jub_ctrl
      },
    ];

    var date = DateTime.now();

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(32, 80, 170, 1),
      appBar: AppBar(
        title: Text("Update Activities"),
      ),
      body: Container(
        height: _height,
        width: _width,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(bottom: _height / 200),
                child: Container(
                  color: Colors.white,
                  // color: Color.fromARGB(255, 206, 215, 236),
                  height: _height / 4,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: _height / 8,
                              width: _width / 4.5,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Teachers_data[index]["img"]),
                                      fit: BoxFit.fill),
                                  color: Colors.amberAccent),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Teachers_data[index]["name"],
                                      style: TextStyle(
                                          fontSize: _height / 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(Teachers_data[index]["des"],
                                        style: TextStyle(
                                            fontSize: _height / 50,
                                            fontWeight: FontWeight.normal)),
                                    Text(Teachers_data[index]["num"],
                                        style: TextStyle(
                                            fontSize: _height / 50,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, right: 30),
                          child: TextFormField(
                            style: TextStyle(fontSize: _height / 50),
                            controller: Teachers_data[index]["ctrl"],
                            decoration: InputDecoration(
                              labelText: "Write your Activities",
                              enabledBorder: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                           children: [
                            Expanded(
                              child: Container(
                                height: _height/25,
                                child: ElevatedButton(  
                                  style: ElevatedButton.styleFrom(primary:
                                 Colors.green),                                                                
                                  onPressed: (){
                                  setState(() {});
                                  CollectionReference collRef = FirebaseFirestore
                                      .instance
                                      .collection(Teachers_data[index]["data"]);
                                  collRef.add({
                                    'notice': Teachers_data[index]["ctrl"].text,
                                    'date': date.millisecondsSinceEpoch,
                                    'color': 1,                               
                                  });                             
                                }, child: Text("At dept.")),
                              ),
                            ),
                             Expanded(
                               child: Container(
                                height: _height/25,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 107, 14, 7)),  
                                  onPressed: (){                                
                                  setState(() {});
                                  CollectionReference collRef = FirebaseFirestore
                                      .instance
                                      .collection(Teachers_data[index]["data"]);
                                  collRef.add({
                                    'notice': Teachers_data[index]["ctrl"].text,
                                    'date': date.millisecondsSinceEpoch,
                                    'color': 2,                               
                                  }); 
                                }, child: Text("At Class")),
                                                         ),
                             ),
                             Expanded(
                               child: Container(
                                height: _height/25,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 82, 16, 235)),  
                                  onPressed: (){
                                  setState(() {});
                                  CollectionReference collRef = FirebaseFirestore
                                      .instance
                                      .collection(Teachers_data[index]["data"]);
                                  collRef.add({
                                    'notice': Teachers_data[index]["ctrl"].text,
                                    'date': date.millisecondsSinceEpoch,
                                    'color': 3,                               
                                  }); 
                                }, child: Text("Weakend")),),
                             ),
                             Expanded(
                               child: Container(
                                height: _height/25,
                                 child: ElevatedButton(onPressed: (){
                                   setState(() {});
                                   CollectionReference collRef = FirebaseFirestore
                                       .instance
                                       .collection(Teachers_data[index]["data"]);
                                   collRef.add({
                                     'notice': Teachers_data[index]["ctrl"].text,
                                     'date': date.millisecondsSinceEpoch,
                                     'color': 4,                               
                                   }); 
                                 }, child: Text("Out campus")),
                               ),
                             ),
                           ],
                        ),
                      ),                    
                    ],
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
