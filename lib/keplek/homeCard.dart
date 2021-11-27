import 'package:furniture_app/halaman/detailHome.dart';
import 'package:furniture_app/model/homeModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  final Detail detail;
  HomeCard(this.detail);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailHome(detail),
          ),
        );
      },
      child: ListTile(
        title: Row(
          children: [
            SizedBox(
                width: 140,
                child: ClipRRect(
                  child: Image.network(detail.image),
                
                )),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail.title,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
