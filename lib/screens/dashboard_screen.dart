import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';
import 'biodata_screen.dart';
import 'contact_screen.dart';
import 'calculator_screen.dart';
import 'weather_screen.dart';
import 'news_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const BiodataScreen(),
    const ContactScreen(),
    const CalculatorScreen(),
    const WeatherScreen(),
    const NewsScreen(),
  ];

  final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_rounded),
      activeIcon: Icon(Icons.person_rounded),
      label: 'Biodata',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.contacts_outlined),
      activeIcon: Icon(Icons.contacts_rounded),
      label: 'Kontak',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.calculate_outlined),
      activeIcon: Icon(Icons.calculate_rounded),
      label: 'Kalkulator',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.wb_sunny_outlined),
      activeIcon: Icon(Icons.wb_sunny_rounded),
      label: 'Cuaca',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.article_outlined),
      activeIcon: Icon(Icons.article_rounded),
      label: 'Berita',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: _navItems,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: AppConstants.primaryColor,
            unselectedItemColor: AppConstants.textSecondaryColor,
            selectedLabelStyle: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            elevation: 0,
            selectedFontSize: 12,
            unselectedFontSize: 11,
          ),
        ),
      ),
    );
  }
}
