import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Locale _locale = const Locale('en');

  void _setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) return supportedLocales.first;
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      home: Builder(
        builder: (context) {
          final l10n = AppLocalizations.of(context)!;
          return Scaffold(
            appBar: AppBar(title: Text(l10n.pageTitle)),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(l10n.helloWorld),
                  const SizedBox(height: 20),
                  Text(l10n.welcome('User')),
                  const SizedBox(height: 20),
                  Text(l10n.itemCount(3)),
                  const SizedBox(height: 20),
                  // Examples of plural rules
                  Text(l10n.remainingMessages(0)),
                  Text(l10n.remainingMessages(1)),
                  Text(l10n.remainingMessages(2)),
                  Text(l10n.remainingMessages(5)),
                  Text(l10n.remainingMessages(20)),
                  const SizedBox(height: 20),
                  // Example of nested placeholders (detailed notification)
                  Text(l10n.detailedNotification("Alice", 0, "Bob")),
                  Text(l10n.detailedNotification("Alice", 1, "Bob")),
                  Text(l10n.detailedNotification("Alice", 5, "Bob")),
                  const SizedBox(height: 20),
                  // Example of context-based translation:
                  Text(l10n.contextMessage('admin')),
                  Text(l10n.contextMessage('user')),
                  Text(l10n.contextMessage('guest')),
                  Text(l10n.contextMessage('other')),
                  const SizedBox(height: 20),
                  // Example of gender based messages
                  Text(l10n.profileCompletion('male')),
                  Text(l10n.profileCompletion('female')),
                  Text(l10n.profileCompletion('other')),
                  const SizedBox(height: 20),
                  // Example of date and time formatting
                  Text(l10n.lastUpdated(DateTime.now())),
                  const SizedBox(height: 10),
                  Text(l10n.meetingTime(DateTime.now())),
                  const SizedBox(height: 10),
                  Text(l10n.shortDate(DateTime.now())),
                  const SizedBox(height: 40),
                  // Language switcher
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => _setLocale(const Locale('en')),
                        child: const Text('English'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () => _setLocale(const Locale('fr')),
                        child: const Text('Français'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () => _setLocale(const Locale('ar')),
                        child: const Text('عربي'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
