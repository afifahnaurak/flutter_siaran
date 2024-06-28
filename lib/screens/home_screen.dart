import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_siaran/pages/history.dart';
import 'package:flutter_siaran/pages/home.dart';
import 'package:flutter_siaran/pages/profile.dart';
import 'package:flutter_siaran/themes/fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  void _onNavbarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  Widget _buildSvgIcon(String assetName, bool isSelected) {
    return SvgPicture.asset(
      assetName,
      width: 20,
      height: 20,
      color: isSelected ? const Color(0xFF014A31) : Colors.grey,
    );
  }

  final List<String> _iconPaths = [
    'assets/icons/Home.svg',
    'assets/icons/History.svg',
    'assets/icons/Profile.svg',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> _listPage = [
      HomePage(),
      HistoryPage(),
      ProfilePage(),
    ];

    final List<BottomNavigationBarItem> _bottomNavBarItems = [
      BottomNavigationBarItem(
        icon: _buildSvgIcon(_iconPaths[0], _selectedTabIndex == 0),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: _buildSvgIcon(_iconPaths[1], _selectedTabIndex == 1),
        label: 'History',
      ),
      BottomNavigationBarItem(
        icon: _buildSvgIcon(_iconPaths[2], _selectedTabIndex == 2),
        label: 'Profile',
      ),
    ];

    final BottomNavigationBar _bottomNavbar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: const Color(0xFF014A31),
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: poppinsMedium.copyWith(
        fontSize: 14,
      ),
      unselectedLabelStyle: poppinsMedium.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      onTap: _onNavbarTapped,
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: RichText(
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
                      fontWeight: FontWeight.w900,
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: _listPage[_selectedTabIndex],
      bottomNavigationBar: _bottomNavbar,
    );
  }
}