import 'dart:io';

import 'functions_main.dart';

// Was soll in mein cli Programm
// Login mit Password
// Register
// Neuen Tagebucheintrag erstellen
// Beenden
void main() {
  print("Herzlich Willkommen! \nIch freue mich dich begrüßen zu dürfen!");
  print("");

  bool appIsRunning = true;
  while (appIsRunning) {
    String userInput = loginMenu();

    switch (userInput) {
      case "Beenden" || "beenden" || "b" || "B":
        appIsRunning = false;
      case "Einloggen" || "einloggen" || "e" || "E":
        print("Bitte Username eingeben");
        String? username = stdin.readLineSync();

        print("Bitte Password eingeben");
        String? password = stdin.readLineSync();

        if (username == "Andreas" && password == "Dopatka") {
          print("Willkommen zurück, Andreas!");
          print("");
          bool userIsLoggedIn = true;

          while (userIsLoggedIn) {
            String userInputMenu = mainMenu();
            switch (userInputMenu) {
              case "1":
                String newUserInput = writeDiaryEntry();
                switch (newUserInput) {
                  case "1":
                    userIsLoggedIn = editLastDiaryEntry(userIsLoggedIn);
                  case "H" || "h":
                    userIsLoggedIn = true;
                  case "Beenden" || "beenden" || "b" || "B":
                    appIsRunning = closeApp(userIsLoggedIn, appIsRunning);
                  default:
                    print("Da ist was schiefgelaufen");
                }
              case "2":
                userIsLoggedIn = newAppointment(userIsLoggedIn);

              case "Beenden" || "beenden" || "b" || "B":
                appIsRunning = closeApp(userIsLoggedIn, appIsRunning);
            }
          }
        } else {
          print("User existiert nicht. Registreie dich bitte. :)");
        }
      case "Registrieren" || "registrieren" || "r" || "R":
        print("Die Server ist momenten leider offline :(");
        appIsRunning = false;
      default:
        print("Ich versteht nur Banhof...");
        appIsRunning = true;
    }
  }
}
