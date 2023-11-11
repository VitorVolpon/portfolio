import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/themes/textsconstraints.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/urls.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar buildAppBar(BuildContext context) {
  
  return AppBar(
    backgroundColor: Colors.grey.shade700,
    leading: Center(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.amber,
              width: 2,
            )
          )
        ),
        child: Text('Vitor', style: GoogleFonts.bodoniModa(textStyle: TextConstraints.textoTitle),)
        )
    ),
    actions: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            launchUrl(
              Uri.parse(githubUrl),
              mode: LaunchMode.externalApplication,
            );
          },
          child: const Icon(
            EvaIcons.github,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            launchUrl(
              Uri.parse(linkedinUrl),
              mode: LaunchMode.externalApplication,
            );
          },
          child: const Icon(
            EvaIcons.linkedin,
            color: Colors.white,
            size: 40,
          ),
        ),
      )
    ],
  );
}