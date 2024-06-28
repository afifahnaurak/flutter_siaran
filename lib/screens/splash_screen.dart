import 'package:flutter/material.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'SIARAN',
                      style: poppinsBlack.copyWith(
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: poppinsBlack.copyWith(
                        color: Color(0xFF00B074),
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Sistem Layanan Pengaduan dan Pelaporan",
                  style: poppinsRegular.copyWith(
                    color: Color(0xFF333333),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
