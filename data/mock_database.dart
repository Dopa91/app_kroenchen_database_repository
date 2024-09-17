import '../models/appointment.dart';
import '../models/diary.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<DiaryEntry> diaryData = [];
  List<User> userData = [User("Andreas", "Dopatka")];
  List<Appointment> appointmentData = [];

  @override
  List<User> getAllUsers() {
    return userData;
  }

  @override
  List<DiaryEntry> getAllDiaryEntry() {
    return diaryData;
  }

  @override
  void createAppointment(Appointment appointment) {
    Appointment newAppointment = Appointment(date: "date", name: "name");
    appointmentData.add(newAppointment);
  }

  @override
  void createDiaryEntry(diaryEntry) {
    DiaryEntry newEntry = diaryEntry;
    diaryData.add(newEntry);
  }

  @override
  void createUser(User user) {
    User newLoginUser = User("loginName", "password");
    userData.add(newLoginUser);
  }

  @override
  void deleteAppointment(Appointment appointment) {}

  @override
  void deleteDiaryEntry(DiaryEntry diaryEntry) {}

  @override
  void deleteUser(User user) {}

  @override
  void editAppointment(Appointment appointment) {}

  @override
  void editDiaryEntry(DiaryEntry diaryEntry) {}

  @override
  void editUser(User user) {}

  @override
  Appointment showAppointment(Appointment appointment) {
    return appointment;
  }

  @override
  DiaryEntry showDiaryEntry(DiaryEntry diaryEntry) {
    return diaryEntry;
  }
}
