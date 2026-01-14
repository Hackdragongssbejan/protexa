import 'package:protexa/app/app_imports.dart';

final firebaseAuthSourceProvider = Provider<FirebaseAuthSource>((ref) {
  return FirebaseAuthSource();
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.read(firebaseAuthSourceProvider));
});

final authControllerProvider = Provider<AuthController>((ref) {
  return AuthController(ref.read(authRepositoryProvider));
});

final authStateProvider = StreamProvider<bool>((ref) {
  return ref.read(authRepositoryProvider).authStateStream();
});
