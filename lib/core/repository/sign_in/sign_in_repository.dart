abstract class SignInRepository {
  Future<void> signInUser({
    required String login,
    required String password,
  });
}
