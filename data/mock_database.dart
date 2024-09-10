import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  @override
  void createAppointment() {}

  @override
  void createDiaryEntry() {}

  @override
  void createUser(String userName, String password) {}

  @override
  void deleteAppointment() {}

  @override
  void deleteDiaryEntry() {}

  @override
  void deleteUser(String userName) {}

  @override
  void editAppointment() {}

  @override
  void editDiaryEntry() {}

  @override
  void editUser(String userName) {}

  @override
  void showAppointment() {}

  @override
  void showDiaryEntry() {}
}
