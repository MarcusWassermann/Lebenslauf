import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  final List<Job> jobs = [
    Job(
      title: 'Software Developer',
      company: 'App Akademie',
      location: '',
      date: 'Okt. 2023 - Jul. 2024',
      responsibilities: [
        'Entwicklung von Anwendungen mit Dart und Flutter.',
        'Design und Prototyping von Benutzeroberflächen mit Figma.',
        'Umsetzung von Web-Anwendungen mit Flutter Web.',
      ],
    ),
    Job(
      title: 'Werkzeugmacher',
      company: 'Air Craft Phillipps',
      location: 'Übersee',
      date: 'Mai 2013 - Sep 2020',
      responsibilities: [
        'Anfertigen von Ersatzteilen nach Zeichnungen.',
        'Genaues Prüfen der Werkzeuge auf Funktionsfähigkeit.',
      ],
    ),
    Job(
      title: 'Vorarbeiter Stanzerei und Galwanik',
      company: 'Poda A.E',
      location: 'Thessaloniki',
      date: 'Mai 2002 - Aug 2012',
      responsibilities: [
        'Erstellen von regelmäßigen Protokollen bezüglich ausgeführter Arbeiten und Eingeben dieser in das [Art] Softwaresystem.',
        'Fachliches Anleiten der Mitarbeiter.',
        'Abstimmen und Prüfen von Arbeitsabläufen bei neuartigen Produktionsprozessen.',
        'Genaues Prüfen der Werkzeuge auf Funktionsfähigkeit.',
      ],
    ),
    Job(
      title: 'Buchbinder',
      company: 'Heinrich Koch',
      location: 'Tübingen',
      date: 'Sep 1985 - Mai 2001',
      responsibilities: [
        'Erstellen von Kunden- und Fertigungsmustern.',
        'Herstellen von Büchern und anderer Druckerzeugnisse inkl. dem Schneiden und Falzen von Papier, das Anbringen von Buchdecken und die Verwendung von Klebstoffen oder Nähten.',
        'Anbringen von Rückenverstärkungen und Kapitalbändern.',
      ],
    ),
  ];

  Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Berufserfahrung',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        ...jobs.map((job) => JobWidget(job)).toList(),
      ],
    );
  }
}

class Job {
  final String title;
  final String company;
  final String location;
  final String date;
  final List<String> responsibilities;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.date,
    required this.responsibilities,
  });
}

class JobWidget extends StatelessWidget {
  final Job job;

  const JobWidget(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${job.title} | ${job.company} | ${job.location}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              job.date,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 6),
            ...job.responsibilities.map((resp) => Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text('• $resp'),
                )),
          ],
        ),
      ),
    );
  }
}
