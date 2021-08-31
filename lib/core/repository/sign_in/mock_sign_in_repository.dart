import '../../core.dart';
import '../repository.dart';

class MockSignInRepository implements SignInRepository {
  @override
  Future<void> signInUser({required String login, required String password}) async {
    await Future.delayed(mockDuration);
  }
}
