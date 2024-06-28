import 'package:flutter/material.dart';
import 'package:flutter_siaran/pages/barang_hilang.dart';
import 'package:flutter_siaran/pages/barang_hilang_feeds.dart';
import 'package:flutter_siaran/pages/bullying.dart';
import 'package:flutter_siaran/pages/change_password.dart';
import 'package:flutter_siaran/pages/detail_barang_hilang.dart';
import 'package:flutter_siaran/pages/edit_barang.dart';
import 'package:flutter_siaran/pages/edit_profile.dart';
import 'package:flutter_siaran/pages/forgot_password.dart';
import 'package:flutter_siaran/pages/history.dart';
import 'package:flutter_siaran/pages/history_barang.dart';
import 'package:flutter_siaran/pages/history_bullying.dart';
import 'package:flutter_siaran/pages/history_kekerasan.dart';
import 'package:flutter_siaran/pages/history_sarana.dart';
import 'package:flutter_siaran/pages/kekerasan_seksual.dart';
import 'package:flutter_siaran/pages/login.dart';
import 'package:flutter_siaran/pages/pic/aduan_masuk.dart';
import 'package:flutter_siaran/pages/pic/history.dart';
import 'package:flutter_siaran/pages/pic/history_bullying.dart';
import 'package:flutter_siaran/pages/pic/history_kekerasan.dart';
import 'package:flutter_siaran/pages/pic/history_sarana.dart';
import 'package:flutter_siaran/pages/pic/profile.dart';
import 'package:flutter_siaran/pages/profile.dart';
import 'package:flutter_siaran/pages/register.dart';
import 'package:flutter_siaran/pages/reset_password.dart';
import 'package:flutter_siaran/pages/sarana_prasarana.dart';
import 'package:flutter_siaran/screens/home_screen.dart';
import 'package:flutter_siaran/screens/pic_home_screen.dart';
import 'package:flutter_siaran/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siaran',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/reset-password': (context) => ResetPasswordPage(),
        '/home': (context) => HomeScreen(),
        '/sarana': (context) => SaranaPrasaranaPage(),
        '/kekerasan': (context) => KekerasanSeksualPage(),
        '/bullying': (context) => BullyingPage(),
        '/barang': (context) => BarangHilangPage(),
        '/barang-feeds': (context) => BarangHilangFeedsPage(),
        '/detail-barang': (context) => DetailBarangHilangPage(),
        '/history': (context) => HistoryPage(),
        '/history-sarana': (context) => HistorySaranaPrasaranaPage(),
        '/history-bullying': (context) => HistoryBullyingPage(),
        '/history-kekerasan': (context) => HistoryKekerasanSeksualPage(),
        '/history-barang': (context) => HistoryBarangHilangPage(),
        '/edit-barang': (context) => EditBarangHilangPage(),
        '/profile': (context) => ProfilePage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/change-password': (context) => ChangePasswordPage(),
        '/forgot-password': (context) => ForgotPasswordPage(),
        '/pic-home': (context) => PICHomeScreen(),
        '/aduan-masuk': (context) => AduanMasukPage(),
        '/pic-profile': (context) => PICProfilePage(),
        '/pic-history': (context) => PICHistoryPage(),
        '/pic-history-bullying': (context) => PICHistoryBullyingPage(),
        '/pic-history-kekerasan': (context) => PICHistoryKekerasanSeksualPage(),
        '/pic-history-sarana': (context) => PICHistorySaranaPrasaranaPage(),
      },
    );
  }
}

