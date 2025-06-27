import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final List<String> skills = const [
    "Flutter & Dart",
    "Python",
    "C/C++",
    "Pandas & NumPy"
        "Firebase",
    "Supabase",
    "YouTube Data API",
    "OAuth2 & Google Cloud",
    "REST APIs",
    "MongoDB",
    "Git & GitHub",
    "UI/UX Design",
    "Data Visualization",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Skills'),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children:
                skills.map((skill) {
                  return Chip(
                    label: Text(skill),
                    backgroundColor: Colors.amber[600],
                    labelStyle: const TextStyle(color: Colors.black),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
