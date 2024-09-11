import '../models/appointment.dart';
import '../models/diary.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<DiaryEntry> diaryData = [];
  List<User> userData = [];
  List<Appointment> appointmentData = [];

  @override
  void createAppointment(String date, String name) {}

  @override
  void createDiaryEntry(
      String date, String content, bool hasFever, int painScale) {}

  @override
  void createUser(String userName, String password) {}

  @override
  void deleteAppointment(String date, String name) {}

  @override
  void deleteDiaryEntry(
      String date, String content, bool hasFever, int painScale) {}

  @override
  void deleteUser(String userName) {}

  @override
  void editAppointment(String date, String name) {}

  @override
  void editDiaryEntry(
      String date, String content, bool hasFever, int painScale) {}

  @override
  void editUser(String userName, User newUserName) {}

  @override
  void showAppointment() {}

  @override
  void showDiaryEntry() {}
}
