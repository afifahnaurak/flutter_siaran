import 'package:flutter/material.dart';
import 'package:flutter_siaran/pages/detail_barang_hilang.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class BarangHilangFeedsPage extends StatefulWidget {
  const BarangHilangFeedsPage({Key? key});

  @override
  State<BarangHilangFeedsPage> createState() => _BarangHilangFeedsPageState();
}

class _BarangHilangFeedsPageState extends State<BarangHilangFeedsPage> {
  void _navigateToBarangPage() {
    Navigator.pushNamed(context, '/barang');
  }

  void _showFilterOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('All', style: poppinsMedium,),
                onTap: () {
                  Navigator.pop(context);
                  // Handle filter option selection
                },
              ),
              ListTile(
                title: Text('Barang Hilang', style: poppinsMedium,),
                onTap: () {
                  Navigator.pop(context);
                  // Handle filter option selection
                },
              ),
              ListTile(
                title: Text('Penemuan Barang', style: poppinsMedium,),
                onTap: () {
                  Navigator.pop(context);
                  // Handle filter option selection
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Stack(
            children: [
              Positioned(
                left: 0,
                top: 15,
                bottom: 0,
                child: BackButton(),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'SIARAN',
                        style: poppinsBold.copyWith(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: poppinsBold.copyWith(
                          color: Color(0xFF00B074),
                          fontWeight: FontWeight.w900,
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Barang Hilang",
                      style: poppinsSemiBold.copyWith(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Image.asset('assets/icons/Filter1.png'),
                        iconSize: 18,
                        onPressed: _showFilterOptions,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: <Widget>[
                    buildCard(
                      context,
                      title: 'Kunci Motor',
                      imagePath: 'assets/images/Foto.png',
                      labelType: 'Barang Hilang',
                    ),
                    buildCard(
                      context,
                      title: 'Kunci Rumah',
                      imagePath: 'assets/images/Foto.png',
                      labelType: 'Penemuan Barang',
                    ),
                    buildCard(
                      context,
                      title: 'Kunci Kos',
                      imagePath: 'assets/images/Foto.png',
                      labelType: 'Penemuan Barang',
                    ),
                    buildCard(
                      context,
                      title: 'Jaket',
                      imagePath: 'assets/images/Foto.png',
                      labelType: 'Barang Hilang',
                    ),
                    buildCard(
                      context,
                      title: 'Mouse',
                      imagePath: 'assets/images/Foto.png',
                      labelType: 'Penemuan Barang',
                    ),
                    buildCard(
                      context,
                      title: 'Botol Minum',
                      imagePath: 'assets/images/Foto.png',
                      labelType: 'Barang Hilang',
                      isCompleted: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Color(0xFF659480),
              onPressed: _navigateToBarangPage,
              child: Image.asset(
                'assets/icons/Plus.png',
                width: 18,
                height: 18,
              ),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context,
      {required String title,
      required String imagePath,
      required String labelType,
      bool isCompleted = false}) {
    
    String label = '';
    Color labelColor = Colors.transparent;

    if (labelType == 'Barang Hilang') {
      label = 'Barang Hilang';
      labelColor = Color(0xFF347BCE);
    } else if (labelType == 'Penemuan Barang') {
      label = 'Penemuan Barang';
      labelColor = Color(0xFF659480);
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailBarangHilangPage()),
        );
      },
      child: Container(
        width: 166,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.white,
          elevation: 4,
          child: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8)),
                    child: Stack(
                      children: [
                        Image.asset(imagePath, height: 150, fit: BoxFit.cover),
                        if (isCompleted)
                          Positioned.fill(
                            child: Container(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    decoration: BoxDecoration(
                      color: labelColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      label,
                      style: poppinsMedium.copyWith(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(title, style: poppinsSemiBold.copyWith(fontSize: 14)),
                  SizedBox(height: 20),
                ],
              ),
              if (isCompleted)
                Positioned(
                  top: 70,
                  left: 40,
                  child: Text(
                    'Selesai',
                    style: poppinsMedium.copyWith(
                        color: Colors.white, fontSize: 20),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
