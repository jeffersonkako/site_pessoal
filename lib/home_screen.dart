import 'package:flutter/material.dart';
import 'package:site_pessoal/constants.dart';
import 'package:site_pessoal/sections/about/about_section.dart';
import 'package:site_pessoal/sections/academy/academy_section.dart';
import 'package:site_pessoal/sections/contact/contact_section.dart';
import 'package:site_pessoal/sections/recent_work/recent_work_section.dart';
import 'package:site_pessoal/sections/tech/tech_section.dart';
import 'package:site_pessoal/sections/topSection/components/menu.dart';
import 'package:site_pessoal/sections/topSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollToSection(int sectionIndex) {
    final sectionOffset = sectionIndex * MediaQuery.of(context).size.height;
    scrollController.animateTo(
      sectionOffset,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Menu(
            scrollToSection:
                scrollToSection), // Adicione o Menu como título da AppBar
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            // Remova o Menu daqui, pois agora está na AppBar
            TopSection(),
            SizedBox(height: kDefaultPadding),
            AboutSection(),
            TechSection(),
            RecentWorkSection(),
            AcademySection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
