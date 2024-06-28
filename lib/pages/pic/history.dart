import 'package:flutter/material.dart';
import 'package:flutter_siaran/pages/pic/history_bullying.dart';
import 'package:flutter_siaran/pages/pic/history_kekerasan.dart';
import 'package:flutter_siaran/pages/pic/history_sarana.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class PICHistoryPage extends StatelessWidget {
  const PICHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Riwayat Pengaduan",
                style: poppinsBold.copyWith(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFB8BCCA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Diproses',
                      style: poppinsMedium.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFB8BCCA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Selesai',
                      style: poppinsMedium.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFFB8BCCA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Ditolak',
                      style: poppinsMedium.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: <Widget>[
                    buildCard(
                      context,
                      'Pelaporan Bullying',
                      'Tindakan Bullying',
                      'Senin, 08 April 2024',
                      'Perilaku tindakan bullying',
                      'Diproses',
                      PICHistoryBullyingPage(),
                    ),
                    buildCard(
                      context,
                      'Pengaduan Sarana Prasarana',
                      'Teknik Elektro',
                      'Senin, 08 April 2024',
                      'Pelaporan kursi rusak',
                      'Selesai',
                      PICHistorySaranaPrasaranaPage(),
                    ),
                    buildCard(
                      context,
                      'Pelaporan Bullying',
                      'Tindakan Bullying',
                      'Senin, 08 April 2024',
                      'Perilaku tindakan bullying',
                      'Diproses',
                      PICHistoryKekerasanSeksualPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String type, String title, String date,
      String desc, String status, Widget page) {
    Color getStatusColor(String status) {
      switch (status) {
        case 'Diajukan':
          return const Color(0xFF347BCE);
        case 'Diproses':
          return const Color(0xFFFF8C06);
        case 'Selesai':
          return const Color(0xFF659480);
        case 'Ditolak':
          return const Color(0xFFAE0707);
        default:
          return Colors.grey;
      }
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: poppinsSemiBold.copyWith(
                    color: Color(0xFF4A766C),
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    title,
                    style: poppinsBold.copyWith(
                      color: Color(0xFF7D7E83),
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  date,
                  style: poppinsRegular.copyWith(
                    color: Color(0xFF7D7E83),
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    desc,
                    style: poppinsRegular.copyWith(
                      color: Color(0xFF7D7E83),
                      fontSize: 13,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 15),
                        decoration: BoxDecoration(
                          color: getStatusColor(status),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          status,
                          style: poppinsRegular.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
