import '../../core.dart';
import '../repository.dart';

class MockConfirmAccessCodeRepository implements ConfirmAccessCodeRepository {
  @override
  Future<bool> validateAccessCode(String code) async {
    await Future.delayed(mockDuration);
    if (code.contains('0')) {
      return true;
    }
    return false;
  }
}
