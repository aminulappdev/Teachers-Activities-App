import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class Views_page extends StatefulWidget {
  const Views_page({super.key});

  @override
  State<Views_page> createState() => _Views_pageState();
}

class _Views_pageState extends State<Views_page> {
  @override
  //  Portrait mode .......
  void initState() {
      super.initState();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);
    }

    @override
    dispose() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      super.dispose();
    }

  Widget build(BuildContext context) {
   
    

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    List teacher = [
      {
        "name": 'Md Ab. Razzak',
        "des": 'Senior Lecturer &\nChairman',
        "num": "01746-671227",
        "img": "assets/razzak.jpg",
        "data": "Razzak",
      },
      {
        "name": 'Partho Sarati Sarker',
        "des": 'Asst. Professor &\nCo-Chairman',
        "num": "01926-203351",
        "img": "assets/partho.jpg",
        "data": "Partho"
      },
      {
        "name": 'Md. Tariqul Islam',
        "des": 'Lecturer',
        "num": "01842-733104",
        "img": "assets/tariqul.jpg",
        "data": "Tariqul"
      },
      {
        "name": 'Md. Riadul Islam',
        "des": 'Lecturer',
        "num": "01842-611852",
        "img": "assets/riadul.jpg",
        "data": "Riadul"
      },
      {
        "name": 'Md. Masudur Rahman',
        "des": 'Lecturer',
        "num": "01731-279192",
        "img": "assets/masud.jpg",
        "data": "Masud"
      },
    ];
    List teacher2 = [
      {
        "name": 'Md. Mahadi Hassan\nShaon',
        "des": 'Lecturer',
        "num": "01721-855838",
        "img": "assets/shaon.jpg",
        "data": "Shaon"
      },
      {
        "name": 'Md. Shahin',
        "des": 'Lecturer',
        "num": "01736-125148",
        "img": "assets/shahin.jpg",
        "data": "Shahin"
      },
      {
        "name": 'Muntasir Rahman',
        "des": 'Lecturer',
        "num": "01785-566674",
        "img": "assets/muntasir.jpg",
        "data": "Muntasir"
      },
      {
        "name": 'Md. Zahid Akon',
        "des": 'Lecturer',
        "num": "01703-436278",
        "img": "assets/zahid.jpg",
        "data": "Zahid"
      },
      {
        "name": 'Zubair',
        "des": 'Lecturer',
        "num": "017",
        "img": "assets/masud.jpg",
        "data": "Jubair"
      },
    ];

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 230, 246),
      body: Container(
        height: _height,
        width: _width,
        child: Padding(
          padding: EdgeInsets.only(
              top: _height / 200, left: _width / 200, right: _width / 200),
          child: Column(
            children: [
              // Heading Start .......................
              Container(
                height: _height / 7.5,
                width: _width,
                // color: const Color.fromARGB(255, 22, 41, 56),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/CSE-logo.jpg"),
                      radius: _height / 15,
                    ),
                    Container(
                      height: _height / 11,
                      // color: Colors.amber,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "Department of Computer Science and Engineering",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 195, 47, 36),
                                  fontSize: _height / 32),
                            ),
                            Text(
                              "UNIVERSITY OF GLOBAL VILLAGE(UGV),BARISHAL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 195, 47, 36),
                                  fontSize: _height / 40),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: _height / 4.5,
                      width: _width / 15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/UGV-logo.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.amberAccent),
                    )
                  ],
                ),
              ),
              // Heading end .......................

              Padding(
                padding:
                    EdgeInsets.only(bottom: _height / 150, top: _height / 200),
                child: Container(
                  color: Color.fromARGB(255, 29, 43, 78),
                  height: _height / 200,
                  width: _width,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: _height / 50),
                    child: Text(
                      "FACULITY INFORMATION BOARD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 195, 47, 36),
                        fontSize: _height / 40,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              // Views start .........................
              Expanded(
                flex: 10,
                child: Container(
                  // color: Colors.amberAccent,
                  width: _width,
                  height: _height / 1.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //color: const Color.fromARGB(255, 90, 71, 15),
                        height: _height / 1.4,
                        width: (_width / 2) - (_width / 200),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      //color: Color.fromARGB(255, 102, 123, 160),
                                      height: _height / 7,
                                      width: (_width / 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Container(
                                          //   decoration: BoxDecoration(
                                          //       color: Color.fromARGB(
                                          //           255, 235, 227, 204),
                                          //       border: Border.all()),
                                          //   height: _height / 8,
                                          //   width: _width / 6,
                                          //   child: SingleChildScrollView(
                                          //     child: Row(
                                          //       children: [
                                          //         Container(
                                          //           decoration: BoxDecoration(
                                          //               image: DecorationImage(
                                          //                   image: AssetImage(
                                          //                       teacher[index]
                                          //                           ["img"]),
                                          //                   fit: BoxFit.fill)),
                                          //           height: _height / 8,
                                          //           width: _width / 18,
                                          //         ),
                                          //         SingleChildScrollView(
                                          //           child: Column(
                                          //             mainAxisAlignment:
                                          //                 MainAxisAlignment
                                          //                     .start,
                                          //             crossAxisAlignment:
                                          //                 CrossAxisAlignment
                                          //                     .start,
                                          //             children: [
                                          //               Padding(
                                          //                 padding:
                                          //                     EdgeInsets.all(
                                          //                         _height /
                                          //                             200),
                                          //                 child: Text(
                                          //                   teacher[index]
                                          //                       ["name"],
                                          //                   style: TextStyle(
                                          //                       fontSize:
                                          //                           _height /
                                          //                               50,
                                          //                       fontWeight:
                                          //                           FontWeight
                                          //                               .bold),
                                          //                 ),
                                          //               ),
                                          //               Padding(
                                          //                 padding:
                                          //                     EdgeInsets.all(
                                          //                         _height /
                                          //                             200),
                                          //                 child: Text(
                                          //                   teacher[index]
                                          //                       ["des"],
                                          //                   style: TextStyle(
                                          //                       fontSize:
                                          //                           _height /
                                          //                               55,
                                          //                       fontWeight:
                                          //                           FontWeight
                                          //                               .normal),
                                          //                 ),
                                          //               ),
                                          //               Padding(
                                          //                 padding:
                                          //                     EdgeInsets.all(
                                          //                         _height /
                                          //                             200),
                                          //                 child: Text(
                                          //                   teacher[index]
                                          //                       ["num"],
                                          //                   style: TextStyle(
                                          //                       fontSize:
                                          //                           _height /
                                          //                               58,
                                          //                       fontWeight:
                                          //                           FontWeight
                                          //                               .normal),
                                          //                 ),
                                          //               ),
                                          //             ],
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: _width / 200),
                                            child: Container(
                                              // color: Color.fromARGB(255, 207, 168, 48),
                                              height: _height / 8,
                                              width: _width / 3.2,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Container(
                                                  //     width: _width / 3.2,
                                                  //     height: _height / 20,
                                                  //     // color:
                                                  //     //     Color.fromARGB(255, 207, 101, 181),

                                                  //     // Data info start ......................
                                                  //     child: StreamBuilder(
                                                  //         stream:
                                                  //             FirebaseFirestore
                                                  //                 .instance
                                                  //                 .collection(
                                                  //                   teacher[index]
                                                  //                       [
                                                  //                       'data'],
                                                  //                 )
                                                  //                 .orderBy(
                                                  //                     'date',
                                                  //                     descending:
                                                  //                         true)
                                                  //                 .snapshots(),
                                                  //         builder: (context,
                                                  //             AsyncSnapshot<
                                                  //                     QuerySnapshot>
                                                  //                 snapshot) {
                                                  //           if (snapshot
                                                  //               .hasData) {
                                                  //             return ListView
                                                  //                 .builder(
                                                  //                     itemCount:
                                                  //                         1,
                                                  //                     itemBuilder:
                                                  //                         (context,
                                                  //                             index) {
                                                  //                       var data = snapshot
                                                  //                           .data!
                                                  //                           .docs[index];
                                                  //                       return Container(
                                                  //                         child:
                                                  //                             Row(
                                                  //                           children: [
                                                  //                             if (data['color'] == 1) ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "At Dept. Office",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ] else ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "At Dept. Office",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ],
                                                  //                             if (data['color'] == 2) ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "At Class",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ] else ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "At Class",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ],
                                                  //                             if (data['color'] == 3) ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "Weakend",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ] else ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "Weakend",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ],
                                                  //                             if (data['color'] == 4) ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "Out of Campus",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ] else ...[
                                                  //                               Expanded(
                                                  //                                 child: Padding(
                                                  //                                   padding: EdgeInsets.only(right: _height / 200),
                                                  //                                   child: Container(
                                                  //                                     decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                  //                                     height: _height / 20,
                                                  //                                     width: _width / 20,
                                                  //                                     child: Center(
                                                  //                                       child: Text(
                                                  //                                         "Out of Campus",
                                                  //                                         style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                  //                                       ),
                                                  //                                     ),
                                                  //                                   ),
                                                  //                                 ),
                                                  //                               ),
                                                  //                             ],
                                                  //                           ],
                                                  //                         ),
                                                  //                       );
                                                  //                     });
                                                  //           } else {
                                                  //             return Center(
                                                  //               child: Text(
                                                  //                 "Loading",
                                                  //                 style: TextStyle(
                                                  //                     fontSize:
                                                  //                         _height /
                                                  //                             40),
                                                  //               ),
                                                  //             );
                                                  //           }
                                                  //         })),
                                                  // Data info end ......................

                                                  Container(
                                                      decoration: BoxDecoration(
                                                          color: Color.fromARGB(255, 95, 183, 136),
                                                          border: Border.all(
                                                              width: 2,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      158,
                                                                      49,
                                                                      41))),
                                                      width: _width / 3.2,
                                                      height: _height / 15,
                                                      // Data fetch start...............
                                                      child: Expanded(
                                                        child: StreamBuilder(
                                                            stream: FirebaseFirestore
                                                                .instance
                                                                .collection(
                                                                  teacher[index]
                                                                      ['data'],
                                                                )
                                                                .orderBy('date',
                                                                    descending:
                                                                        true)
                                                                .snapshots(),
                                                            builder: (context,
                                                                AsyncSnapshot<
                                                                        QuerySnapshot>
                                                                    snapshot) {
                                                              if (snapshot
                                                                  .hasData) {
                                                                return ListView
                                                                    .builder(
                                                                        itemCount:
                                                                            1,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          var data = snapshot
                                                                              .data!
                                                                              .docs[index];

                                                                          return Padding(
                                                                            padding:
                                                                                EdgeInsets.all(_height / 100),
                                                                            child:
                                                                                Text(
                                                                              data["notice"],
                                                                              style: TextStyle(fontSize: _height / 35, fontWeight: FontWeight.bold),
                                                                            ),
                                                                           
                                                                          );


                                                                        });
                                                              } else {
                                                                return Center(
                                                                  child: Text(
                                                                    "Loading",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            _height /
                                                                                40),
                                                                  ),
                                                                );
                                                              }
                                                            }),

                                                        // Data fetch end ..............,
                                                      ))
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //color: const Color.fromARGB(255, 90, 71, 15),
                        height: _height / 1.4,
                        width: (_width / 2) - (_width / 200),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      //color: Color.fromARGB(255, 102, 123, 160),
                                      height: _height / 7,
                                      width: (_width / 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 235, 227, 204),
                                                border: Border.all()),
                                            height: _height / 8,
                                            width: _width / 6,
                                            child: SingleChildScrollView(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                teacher2[index]
                                                                    ["img"]),
                                                            fit: BoxFit.fill)),
                                                    height: _height / 8,
                                                    width: _width / 18,
                                                  ),
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  _height /
                                                                      200),
                                                          child: Text(
                                                            teacher2[index]
                                                                ["name"],
                                                            style: TextStyle(
                                                                fontSize:
                                                                    _height /
                                                                        50,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  _height /
                                                                      200),
                                                          child: Text(
                                                            teacher2[index]
                                                                ["des"],
                                                            style: TextStyle(
                                                                fontSize:
                                                                    _height /
                                                                        55,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  _height /
                                                                      200),
                                                          child: Text(
                                                            teacher2[index]
                                                                ["num"],
                                                            style: TextStyle(
                                                                fontSize:
                                                                    _height /
                                                                        58,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: _width / 200),
                                            child: Container(
                                              // color: Color.fromARGB(255, 207, 168, 48),
                                              height: _height / 8,
                                              width: _width / 3.2,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: _width / 3.2,
                                                      height: _height / 20,
                                                      // color:
                                                      //     Color.fromARGB(255, 207, 101, 181),

                                                      // Data info start ......................
                                                      child: StreamBuilder(
                                                          stream:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                    teacher2[
                                                                            index]
                                                                        [
                                                                        'data'],
                                                                  )
                                                                  .orderBy(
                                                                      'date',
                                                                      descending:
                                                                          true)
                                                                  .snapshots(),
                                                          builder: (context,
                                                              AsyncSnapshot<
                                                                      QuerySnapshot>
                                                                  snapshot) {
                                                            if (snapshot
                                                                .hasData) {
                                                              return ListView
                                                                  .builder(
                                                                      itemCount:
                                                                          1,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        var data = snapshot
                                                                            .data!
                                                                            .docs[index];
                                                                        return Container(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              if (data['color'] == 1) ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "At Dept. Office",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ] else ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "At Dept. Office",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                              if (data['color'] == 2) ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "At Class",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ] else ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "At Class",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                              if (data['color'] == 3) ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "Weakend",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ] else ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "Weakend",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                              if (data['color'] == 4) ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.green, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "Out of Campus",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ] else ...[
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(right: _height / 200),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.red, border: Border.all()),
                                                                                      height: _height / 20,
                                                                                      width: _width / 20,
                                                                                      child: Center(
                                                                                        child: Text(
                                                                                          "Out of Campus",
                                                                                          style: TextStyle(fontSize: _height / 60, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ],
                                                                          ),
                                                                        );
                                                                      });
                                                            } else {
                                                              return Center(
                                                                child: Text(
                                                                  "Loading",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          _height /
                                                                              40),
                                                                ),
                                                              );
                                                            }
                                                          })),
                                                  // Data info end ......................

                                                  Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          border: Border.all(
                                                              width: 2,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      158,
                                                                      49,
                                                                      41))),
                                                      width: _width / 3.2,
                                                      height: _height / 15,
                                                      // Data fetch start...............
                                                      child: Expanded(
                                                        child: StreamBuilder(
                                                            stream: FirebaseFirestore
                                                                .instance
                                                                .collection(
                                                                  teacher2[
                                                                          index]
                                                                      ['data'],
                                                                )
                                                                .orderBy('date',
                                                                    descending:
                                                                        true)
                                                                .snapshots(),
                                                            builder: (context,
                                                                AsyncSnapshot<
                                                                        QuerySnapshot>
                                                                    snapshot) {
                                                              if (snapshot
                                                                  .hasData) {
                                                                return ListView
                                                                    .builder(
                                                                        itemCount:
                                                                            1,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          var data = snapshot
                                                                              .data!
                                                                              .docs[index];

                                                                          return Padding(
                                                                            padding:
                                                                                EdgeInsets.all(_height / 100),
                                                                            child:
                                                                                Text(
                                                                              data["notice"],
                                                                              style: TextStyle(fontSize: _height / 35, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          );
                                                                        });
                                                              } else {
                                                                return Center(
                                                                  child: Text(
                                                                    "Loading",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            _height /
                                                                                40),
                                                                  ),
                                                                );
                                                              }
                                                            }),

                                                        // Data fetch end ..............,
                                                      ))
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Views end ............................

              // Footer start .........................
              Expanded(
                child: Container(
                  color: Color.fromARGB(251, 74, 85, 110),
                  height: _height / 15,
                  width: _width,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: _height / 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Department of Computer Science and Engineering(CSE), University of Global Village(UGV), Barishal",
                            style: TextStyle(
                                fontSize: _height / 65, color: Colors.white),
                          ),
                          Text(
                            "874/322, C&B Road, Barishal, Bangladesh. Phonr: +88 01703-436278 E-mail: cse.ugv.2016@gmail.com",
                            style: TextStyle(
                                fontSize: _height / 65, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
