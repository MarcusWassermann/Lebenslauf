import 'package:flutter/material.dart';
import 'portfolio_page.dart';

class CoverLetter extends StatelessWidget {
  const CoverLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Anschreiben',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 16.0),
        Text(
          'Sehr geehrte Damen und Herren,\n\n'
          'mit großem Interesse habe ich Ihre Stellenausschreibung für die Position des Software-Entwicklers gelesen. Mein Name ist Marcus Wassermann und ich bin davon überzeugt, dass mein Werdegang und meine Fähigkeiten perfekt zu Ihren Anforderungen passen.\n\n'
          'In den letzten Jahren habe ich mich intensiv mit der Entwicklung von mobilen Anwendungen auf Basis von Flutter beschäftigt. Ich bringe fundierte Kenntnisse in der Programmierung von Benutzeroberflächen, der Anbindung an Programmierschnittstellen und der Implementierung von komplexen Logiken mit. Darüber hinaus verfüge ich über Erfahrung im Einsatz agiler Methoden und arbeite gerne in Teams zusammen.\n\n'
          'Ich wäre hochmotiviert, mein Wissen und Können in Ihrem Unternehmen einzubringen und freue mich auf die Möglichkeit, mich persönlich bei Ihnen vorzustellen. Bitte finden Sie in der Anlage meinen Lebenslauf mit weiteren Details zu meinem beruflichen Werdegang.\n\n'
          'Mit freundlichen Grüßen',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 4.0),
        Image.asset('assets/signature.png',
            width: 200, height: 75, fit: BoxFit.contain),
        const SizedBox(height: 8.0),
        Text(
          'Marcus Wassermann',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Navigate to the portfolio page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PortfolioPage()),
            );
          },
          child: const Text('Portfolio ansehen'),
        ),
      ],
    );
  }
}
