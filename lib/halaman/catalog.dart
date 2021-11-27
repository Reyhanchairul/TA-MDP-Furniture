import 'package:furniture_app/keplek/catalogCard.dart';
import 'package:furniture_app/model/catalogModel.dart';
import 'package:furniture_app/model/catalogAPI.dart';
import 'package:furniture_app/model/homeModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeCatalog extends StatefulWidget {
  @override
  _HomeCatalogState createState() => _HomeCatalogState();
}

class _HomeCatalogState extends State<HomeCatalog> {
  @override
  Widget build(BuildContext context) {
    var catalogAPI = Provider.of<CatalogAPI>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // 1
        title: Text(
          'I K E Y A H   \n   Catalog',
          style: TextStyle(
            color: Colors.orange, // 2
          ),
        ),
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: catalogAPI.getRecommendedAct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Catalog> data = snapshot.data;
                return Column(
                  children: data.map((item) {
                    return Container(
                      child: CatalogCard(item),
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
