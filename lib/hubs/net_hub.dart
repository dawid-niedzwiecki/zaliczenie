import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class NetHub {
  NetHub._internal();

  factory NetHub() {
    return _instance;
  }

  static final NetHub _instance = NetHub._internal();

  static const String _projectId = String.fromEnvironment('PROJECT_ID');
  static const String _apiEndpoint = String.fromEnvironment('API_ENDPOINT');

  late final Client _client;
  late final Account _account;

  void initNetHub() {
    _client = Client();
    _account = Account(_client);
    _client.setEndpoint(_apiEndpoint);
    _client.setProject(_projectId);
  }

  // POST /v1/account
  Future<void> register(String email, String password) async {
    User user = await _account.create(userId: 'unique()', email: email, password: password);
    print(user.$id);
  }
}
