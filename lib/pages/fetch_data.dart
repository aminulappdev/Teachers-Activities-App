import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Data_fetch extends StatefulWidget {
  const Data_fetch({super.key});

  @override
  State<Data_fetch> createState() => _Data_fetchState();
}

class _Data_fetchState extends State<Data_fetch> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection("Partho",).orderBy('date', descending: true).snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index){
                        var data = snapshot.data!.docs[index];
                        return Column(
                          children: [
                            ListTile(
                              title: Text(data["notice"]),
                            ),
                          ],
                        );
                    });
                  }
                  else{
                    return Container(
                      child: Text("Sorry"),
                    );
                    
                  }
                }        
                ),
            ),
          ),
        ],
      ),
    );
  }
}

