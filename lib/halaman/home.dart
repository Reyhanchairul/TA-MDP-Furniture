import 'package:furniture_app/keplek/homeCard.dart';
import 'package:furniture_app/model/homeModel.dart';
import 'package:furniture_app/model/homeAPI.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var detailAPI = Provider.of<HomeAPI>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("I  K  E  Y  A  H"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.yellow,
        centerTitle: true,
        toolbarOpacity: 1,
        titleSpacing: 1,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              icon: new Icon(Icons.more_vert_rounded),
  onPressed:(){}
            )
          
          ),
  ]
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: detailAPI.getRecommendedMov(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Detail> data = snapshot.data;
                return Column(
                  children: data.map((item) {
                    return Container(
                      child: HomeCard(item),
                    );
                  }).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )
        ],
      ),
    );
  }
}
