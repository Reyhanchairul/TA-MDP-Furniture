import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: 300,
                  width: double.infinity,
                  
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'res/ireng.png',
                        height: 280,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 330),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  'Reyhan Chairul Alim' ,
                              
                                  style: uireng.copyWith(fontSize: 30),
                                  
                                ),
                              ],
                            ),
                          ),
                           Center(
                            child: Column(
                              children: [
                                Text(
                                   
                                  '21120119140140',
                              
                                  style: uireng.copyWith(fontSize: 18),
                                  
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text( '"Halo aku kamu, kamu aku, halo kamu aku, halo aku aku, halo kamu kamu,halo halo halo, aku halo kamu, kamu halo aku ."\n -unch',
                            textAlign: TextAlign.justify,
                                style: kuneng.copyWith(fontSize: 16, color: Colors.black54),
                                
                            )
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
