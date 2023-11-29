/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';

class SettingsOptionButton extends StatelessWidget {
  final String title;
  final Widget? page;
  final VoidCallback? onTap;

  const SettingsOptionButton({
    required this.title,
    super.key,
    this.page,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        onPressed: onTap ??
                () {
              if (page != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page!),
                );
              }
            },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge,
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}
