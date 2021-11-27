import 'dart:ffi';

import 'package:furniture_app/halaman/intro.dart';
import 'package:furniture_app/model/homeModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailHome extends StatefulWidget {
  // const DetailMovies({ Key? key }) : super(key: key);
  final Detail detail;
  DetailHome(this.detail);
  @override
  _DetailHomeState createState() => _DetailHomeState();
}

class _DetailHomeState extends State<DetailHome> {
  bool _isBluetoothOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I K E Y A H"),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.yellow,
        
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
                color: Colors.yellow,
                
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
                      style: GoogleFonts.poppins (fontSize: 50, color: Colors.blue.shade900,letterSpacing: 2,), 
                    ),
                    Text(
                      'Price : \$${widget.detail.price}',
                      style: GoogleFonts.poppins(color: Colors.black87, letterSpacing: 1),
                    ),
                    Text(
                      ' ${widget.detail.subTitle}',
                      style: GoogleFonts.poppins(color: Colors.black54, letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${widget.detail.description}',
                      textAlign: TextAlign.justify,
                    )
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
