import 'dart:io';

bool newAppointment(bool userIsLoggedIn) {
  print("Wann ist der Termin ?");
  stdin.readLineSync();
  print("");
  print("Und was findest an dem Termin stat?");
  stdin.readLineSync();
  print("");
  print("Alles klar!, Termin ist eingetragen!");
  userIsLoggedIn = true;
  return userIsLoggedIn;
}

bool closeApp(bool userIsLoggedIn, bool appIsRunning) {
  userIsLoggedIn = false;
  appIsRunning = false;
  return appIsRunning;
}

bool editLastDiaryEntry(bool userIsLoggedIn) {
  print("Was möchtest du noch hinzufügen, was hast du vergessen? :)");
  stdin.readLineSync()!;
  print("");
  print("Tagebucheintrag gespeichert!");
  print("");
  userIsLoggedIn = true;
  return userIsLoggedIn;
}

String loginMenu() {
  print("Was möchtest du als nächstes tuen?");
  print("");
  print(
      "Die App schließen? (B)eenden) \nDich einloggen? (E)inloggen) \noder \nNeu Registrieren? (R)egistrieren)");

  String userInput = stdin.readLineSync()!;
  return userInput;
}

String mainMenu() {
  print(
      "Menüpunkte: Neuer Tagebucheinrag (1) oder Neuen Termin eintragen (2) Zum beenden der App (B) ");
  String userInputMenu = stdin.readLineSync()!;
  return userInputMenu;
}

String writeDiaryEntry() {
  print(
      "Dann wollen wir mal begeinnen, wie geht es dir heute? \nWie war dein Tag");
  stdin.readLineSync();
  print("Tagebucheintrag gespeichert!");
  print("");
  print(
      "Was möchtest du als nächstes tuen?\nTagebucheintrag ergänzen (1) Hauptmenü (H) App beenden (B)");

  String newUserInput = stdin.readLineSync()!;
  return newUserInput;
}
