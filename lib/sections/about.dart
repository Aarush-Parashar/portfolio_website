import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SectionTitle(title: 'About Me'),
          SizedBox(height: 16),
          Text(
            "Hello there! I'm Aarush Parashar, a Computer Science and Engineering student at SRM University specializing in Data Science and AI.\n  "
            "I'm passionate about building modern, efficient, and apps. I've worked on real-world projects like YouTube Post Manager, CSV Predictor, and an Instamart UI clone. "
            "With experience in Firebase, Supabase, and API integrations, I aim to bridge creators, data, and users through impactful tech.",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
