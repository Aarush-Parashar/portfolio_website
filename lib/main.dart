import 'package:flutter/material.dart';
import 'sections/about.dart';
import 'sections/featured_work.dart';
import 'sections/skills.dart';
import 'sections/experience.dart';
import 'sections/contact.dart';
import 'widgets/nav_bar.dart';

final GlobalKey aboutKey = GlobalKey();
final GlobalKey workKey = GlobalKey();
final GlobalKey skillsKey = GlobalKey();
final GlobalKey experienceKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

final ScrollController scrollController = ScrollController();
void main() => runApp(const PortfolioApp());

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: NavBar(
          onItemSelected: (section) {
            final keyContext = section.currentContext;
            if (keyContext != null) {
              Scrollable.ensureVisible(
                keyContext,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          sectionKeys: {
            'About': aboutKey,
            'Work': workKey,
            'Skills': skillsKey,
            'Experience': experienceKey,
            'Contact': contactKey,
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            AboutSection(key: aboutKey),
            FeaturedWorkSection(key: workKey),
            SkillsSection(key: skillsKey),
            ExperienceSection(key: experienceKey),
            ContactSection(key: contactKey),
          ],
        ),
      ),
    );
  }
}
