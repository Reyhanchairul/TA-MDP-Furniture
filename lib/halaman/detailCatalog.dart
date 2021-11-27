import 'dart:ffi';
import 'package:furniture_app/model/catalogModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCatalog extends StatefulWidget {
  // const DetailMovies({ Key? key }) : super(key: key);
  final Catalog detail;
  DetailCatalog(this.detail);
  @override
  _DetailCatalogState createState() => _DetailCatalogState();
}

class _DetailCatalogState extends State<DetailCatalog> {
  bool _isBluetoothOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, // 1
        title: Text(
          'I K E Y A H   \n   Catalog',
          style: TextStyle(
            color: Colors.blue, // 2
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              icon: new Icon(Icons.favorite_border),
               onPressed:(){
                 setState(() {
                   _isBluetoothOn = !_isBluetoothOn;
                 });
               }
          ),
          )        
  ],
        
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(1),
                width: 400,
                height: 480,
                child: Image.network(
                  widget.detail.image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                
                padding:
                    EdgeInsets.only(
                      bottom: 110, 
                      left: 20, 
                      right: 20, 
                      top: 10),
                
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.detail.title,
                      style: GoogleFonts.poppins (fontSize: 50, color: Colors.yellow.shade900,letterSpacing: 8,), 
                    ),
                    Text(
                      ' 20% OFF Until \n ${widget.detail.createdAt}',
                      style: GoogleFonts.poppins(color: Colors.black87, letterSpacing: 1),
                    ),
                    Text(
                      ' 100 left',
                      style: GoogleFonts.poppins(color: Colors.blue.shade700, letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Text(
                    //   '${widget.detail.description}',
                    //   textAlign: TextAlign.justify,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
