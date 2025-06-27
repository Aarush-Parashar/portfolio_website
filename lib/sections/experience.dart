import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SectionTitle(title: 'Experience'),
          SizedBox(height: 24),
          ExperienceTile(
            role: 'Flutter Developer Intern',
            company: 'D4X Technologies',
            duration: 'Jan 2025 – Mar 2025',
            description:
                'Built and optimized Flutter UIs, reduced app size by 60%, and integrated real-time CSV handling and visualization.',
          ),
          ExperienceTile(
            role: 'Open Source Projects',
            company: 'GitHub',
            duration: '2023 – Present',
            description:
                'Led the development of PostPilot and CSV Predictor, working with APIs, Supabase, and responsive UI systems.',
          ),
        ],
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  final String role, company, duration, description;

  const ExperienceTile({
    super.key,
    required this.role,
    required this.company,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        role,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$company • $duration',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(description),
          const Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
