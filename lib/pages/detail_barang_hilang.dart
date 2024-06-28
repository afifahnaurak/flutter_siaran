import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';
import 'package:flutter_siaran/widgets/custom_button.dart';

class DetailBarangHilangPage extends StatefulWidget {
  const DetailBarangHilangPage({Key? key});

  @override
  State<DetailBarangHilangPage> createState() => _DetailBarangHilangPageState();
}

class _DetailBarangHilangPageState extends State<DetailBarangHilangPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFFF8C06)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Proses',
                          style: poppinsMedium.copyWith(
                            color: Color(0xFFFF8C06),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Foto.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xFF347BCE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Barang Hilang',
                  style: poppinsMedium.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lokasi',
                style: poppinsSemiBold.copyWith(
                  fontSize: 20,
                  color: Color(0xFF659480),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Parkiran Elektro',
                style: poppinsMedium.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Tanggal',
                style: poppinsSemiBold.copyWith(
                  fontSize: 20,
                  color: Color(0xFF659480),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '08/04/2024',
                style: poppinsMedium.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Deskripsi',
                style: poppinsSemiBold.copyWith(
                  fontSize: 20,
                  color: Color(0xFF659480),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Ciri-ciri kunci memiliki gantungan berbentuk bintang',
                style: poppinsMedium.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ContactButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        label: 'Hubungi Pelapor',
      ),
    );
  }
}
