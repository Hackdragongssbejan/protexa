import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:protexa/features/authentication/login/data/repo/firebase_auth_repo.dart';
import 'package:protexa/features/authentication/login/providers/auth_providers.dart';

final authControllerProvider =
StateNotifierProvider<AuthController, AsyncValue<void>>((ref) {
  return AuthController(ref.read(authRepositoryProvider));
});

class AuthController extends StateNotifier<AsyncValue<void>> {
  final AuthRepository _repo;

  AuthController(this._repo) : super(const AsyncData(null));

  Future<void> signUp(String email, String password) async {
    state = const AsyncLoading();
    try {
      await _repo.signUp(email: email, password: password);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    try {
      await _repo.login(email: email, password: password);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> logout() async {
    await _repo.logout();
  }
}
