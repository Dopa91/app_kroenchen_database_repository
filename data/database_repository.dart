abstract class DatabaseRepository {
// Einen neuen Benutzer hinzufügen (createUser)
  void createUser(String userName, String password);
// Bestehende Benutzerdaten bearbeiten ( editUser)
  void editUser(String userName);
// Benutzerdaten löschen (deleteUser)
  void deleteUser(String userName);
// Einen neuen Tagebucheintrag erstellen (createDiaryEntry)
  void createDiaryEntry();
// Den Tagebucheintrag anzeigen lassen (showDiaryEntry)
  void showDiaryEntry();
// Tagebucheintrag bearbeiten ( editDiaryEntry)
  void editDiaryEntry();
// Tagebucheintrag löschen (deleteDiaryEntry)
  void deleteDiaryEntry();
// Einen neuen Termineintrag erstellen (createAppointment)
  void createAppointment();
// Den erstellten Termin  anzeigen lassen (showAppointment)
  void showAppointment();
// Termine bearbeiten ( editAppointment)
  void editAppointment();
// Termin löschen (deleteAppointment)
  void deleteAppointment();
}
