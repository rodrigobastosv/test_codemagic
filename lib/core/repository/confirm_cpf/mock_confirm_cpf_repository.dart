import '../../core.dart';
import '../repository.dart';

class MockConfirmCpfRepository implements ConfirmCpfRepository {
  @override
  Future<bool> validateCpf(String cpf) async {
    await Future.delayed(mockDuration);
    if (cpf.contains('0')) {
      return true;
    }
    return false;
  }
}
