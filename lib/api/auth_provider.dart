import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_service.dart';
final URI = "https://ivanm.d3955yyconbagf.amplifyapp.com/api/applogin";

// AuthService provider
final authServiceProvider = Provider<AuthService>((ref) => AuthService(URI));

// Authentication state provider
final authStateProvider = StateProvider<Map<String, String?>>((ref) => {});

// Login function with async handling
final loginProvider = FutureProvider.family<bool, Map<String, String>>((ref, credentials) async {
  final authService = ref.watch(authServiceProvider);

  final response = await authService.login(
    credentials['email']!,
    credentials['password']!,
  );

  if (response != null) {
    ref.read(authStateProvider.notifier).update((state) => {"nombre": response["nombre"]});
    return true;
  }

  return false;
});
