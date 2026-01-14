import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> authStateChanges() {
    return _auth.authStateChanges();
  }

  // =========================
  // EMAIL AUTH
  // =========================

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) {
    return _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> registerWithEmail({
    required String email,
    required String password,
  }) {
    return _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // =========================
  // PHONE AUTH
  // =========================

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required Function(String verificationId) codeSent,
    required Function(String error) onError,
  }) {
    return _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        onError(e.message ?? 'Phone verification failed');
      },
      codeSent: (verificationId, _) {
        codeSent(verificationId);
      },
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  Future<UserCredential> verifyOtp({
    required String verificationId,
    required String otp,
  }) {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: otp,
    );
    return _auth.signInWithCredential(credential);
  }

  // =========================
  // COMMON
  // =========================

  Future<void> signOut() => _auth.signOut();

  User? get currentUser => _auth.currentUser;
}
