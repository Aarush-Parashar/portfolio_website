import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

class FeaturedWorkSection extends StatelessWidget {
  const FeaturedWorkSection({super.key});

  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Featured Work'),
          const SizedBox(height: 16),
          ProjectCard(
            title: 'YouTube Post Manager',
            description:
                'A Flutter app where editors upload videos to YouTube in private mode. Creators approve them, and the app makes them public. Built with Firebase, Supabase, and YouTube Data API.',
            link: 'https://github.com/Aarush-Parashar',
          ),
          ProjectCard(
            title: 'CSV Predictor App',
            description:
                'Upload CSVs, visualize data, and predict trends using ML. Developed a complete frontend with dynamic flows and 60% size optimization.',
            link: 'https://github.com/Aarush-Parashar',
          ),
          ProjectCard(
            title: 'Instamart UI Clone',
            description:
                'A responsive UI clone of Swiggy Instamart built in Flutter with cart functionality and styled navigation bar.',
            link: 'https://github.com/Aarush-Parashar',
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title, description, link;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: TextButton(
          child: const Text("View", style: TextStyle(color: Colors.amber)),
          onPressed: () => launchUrl(Uri.parse(link)),
        ),
      ),
    );
  }
}
