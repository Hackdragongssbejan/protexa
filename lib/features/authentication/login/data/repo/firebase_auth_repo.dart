import 'package:protexa/app/app_imports.dart';

class AuthRepository {
  final FirebaseAuthSource _source;

  AuthRepository(this._source);

  Stream<bool> authStateStream() {
    return _source.authStateChanges().map((user) => user != null);
  }

  Future<void> loginWithEmail(String email, String password) async {
    await _source.signInWithEmail(
      email: email,
      password: password,
    );
  }

  Future<void> registerWithEmail(String email, String password) async {
    await _source.registerWithEmail(
      email: email,
      password: password,
    );
  }

  Future<void> loginWithPhone(
      String phone,
      Function(String verificationId) onCodeSent,
      Function(String error) onError,
      ) {
    return _source.verifyPhoneNumber(
      phoneNumber: phone,
      codeSent: onCodeSent,
      onError: onError,
    );
  }

  Future<void> verifyOtp(String id, String otp) async {
    await _source.verifyOtp(
      verificationId: id,
      otp: otp,
    );
  }

  Future<void> logout() => _source.signOut();
}
