import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _launchGitHub() =>
      launchUrl(Uri.parse("https://github.com/Aarush-Parashar"));
  void _launchLinkedIn() =>
      launchUrl(Uri.parse("https://linkedin.com/in/aarush-parashar-19128b294"));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Contact Me'),
          const SizedBox(height: 16),
          const Text(
            "Want to collaborate or have a project in mind? Let’s connect!",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.mail),
                label: const Text("aarushparashar2004@gmail.com"),
              ),
              ElevatedButton.icon(
                onPressed: _launchGitHub,
                icon: const Icon(Icons.code),
                label: const Text("GitHub"),
              ),
              ElevatedButton.icon(
                onPressed: _launchLinkedIn,
                icon: const Icon(Icons.business),
                label: const Text("LinkedIn"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
