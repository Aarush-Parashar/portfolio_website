import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final void Function(GlobalKey) onItemSelected;
  final Map<String, GlobalKey> sectionKeys;

  const NavBar({
    super.key,
    required this.onItemSelected,
    required this.sectionKeys,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Aarush | Portfolio'),
      backgroundColor: Colors.black,
      elevation: 4,
      actions:
          sectionKeys.entries.map((entry) {
            return TextButton(
              onPressed: () => onItemSelected(entry.value),
              child: Text(
                entry.key,
                style: const TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
    );
  }
}
