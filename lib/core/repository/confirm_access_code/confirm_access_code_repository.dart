abstract class ConfirmAccessCodeRepository {
  Future<bool> validateAccessCode(String code);
}
