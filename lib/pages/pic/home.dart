import 'package:flutter/material.dart';
import 'package:flutter_siaran/pages/pic/aduan_masuk.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class PICHomePage extends StatelessWidget {
  const PICHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF659480), Color(0xFFAFD5C5)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Recap Pengaduan",
                        style: poppinsBold.copyWith(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 15),
                      Card(
                        color: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 16.0, right: 16.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(5),
                                child: Image.asset(
                                  'assets/icons/Icon_Recap.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2",
                                      style: poppinsBold.copyWith(
                                        color: Color(0xFF333333),
                                        fontSize: 40,
                                      ),
                                    ),
                                    Text(
                                      "Pengaduan & Pelaporan",
                                      style: poppinsRegular.copyWith(
                                        color: Color(0xFF333333),
                                        fontSize: 13,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "Pengaduan & Pelaporan",
                      style: poppinsBold.copyWith(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      buildCard(context, 'assets/icons/Info.png',
                          'Pengaduan Masuk', AduanMasukPage()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(
      BuildContext context, String assetPath, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        color: const Color(0xFF659480),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(0),
                child: Image.asset(
                  assetPath,
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 60,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: poppinsLight.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
