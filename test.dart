import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/user.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();
  mockDatabase.createUser("Mina", "Leonie");

  List<User> allUsers = mockDatabase.getAllUsers();

  printAllUsers(allUsers);
}

void printAllUsers(List<User> allUsers) {
  for (User user in allUsers) {
    print(user);
  }
}
