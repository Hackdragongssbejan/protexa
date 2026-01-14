import 'package:protexa/app/app_imports.dart';

class AuthController {
  final AuthRepository _repository;

  AuthController(this._repository);

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await _repository.loginWithEmail(email, password);
  }

  Future<void> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    await _repository.registerWithEmail(email, password);
  }

  Future<void> signInWithPhone({
    required String phone,
    required Function(String verificationId) onCodeSent,
    required Function(String error) onError,
  }) async {
    await _repository.loginWithPhone(
      phone,
      onCodeSent,
      onError,
    );
  }

  Future<void> verifyOtp({
    required String verificationId,
    required String otp,
  }) async {
    await _repository.verifyOtp(verificationId, otp);
  }

  Future<void> logout() async {
    await _repository.logout();
  }
}
