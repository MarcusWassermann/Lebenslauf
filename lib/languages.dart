import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  final List<Language> languages = [
    Language(name: 'Deutsch', level: 'Muttersprache'),
    Language(name: 'Englisch', level: 'B2 Gute Kenntnisse'),
    Language(name: 'Griechisch', level: 'B2 Gute Kenntnisse'),
  ];

   Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sprachen',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        ...languages.map((lang) => LanguageWidget(lang)).toList(),
      ],
    );
  }
}

class Language {
  final String name;
  final String level;

  Language({required this.name, required this.level});
}

class LanguageWidget extends StatelessWidget {
  final Language language;

  const LanguageWidget(this.language, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          '${language.name}: ${language.level}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
