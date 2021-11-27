

import 'package:furniture_app/halaman/detailCatalog.dart';
import 'package:furniture_app/model/catalogModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogCard extends StatelessWidget {
  final Catalog catalog;
  CatalogCard(this.catalog);

  @override
Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCatalog(catalog),
          ),
        );
      },
      child: ListTile(
        hoverColor: Colors.black,
        subtitle:
        Text(
          "Product : Indoramet \n20% off",
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        title: Row(
          children: [
            SizedBox(
                height: 500,
                width: 379,
                child: ClipRRect(
                  child: Image.network(catalog.image),
                )),

          ],
        ),
      ),
    );
  }
}