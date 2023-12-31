import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

abstract class UserRepository<T> {
  Future<T> register();
  Future<T> signIn();
  Future<void> signOut();
}

class EmailUser implements UserRepository {
  EmailUser({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
  final auth = FirebaseAuth.instance;

  @override
  Future<void> signIn() async {
    await auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    return await auth.signOut();
  }

  @override
  Future<UserCredential> register() async {
    UserCredential user = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return user;
  }
}

class AuthService extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  BuildContext? context;
  late UserRepository userRepository;

  bool signedIn = false;
  User? get user => FirebaseAuth.instance.currentUser;

  Future<void> signIn() async {
    userRepository = EmailUser(
      email: emailController.text,
      password: passwordController.text,
    );
    try {
      await userRepository.signIn();
      signedIn = true;

      if (signedIn == true) {
        Navigator.pop(context!);
        Navigator.push(
          context!,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      }

      notifyListeners();
    } on FirebaseAuthException catch (e) {
      // print(e.code);
      ScaffoldMessenger.of(context!).showSnackBar(
        SnackBar(
          content: Text(e.message!),
        ),
      );
    }
  }

  Future<void> register() async {
    userRepository = EmailUser(
      email: emailController.text,
      password: passwordController.text,
    );
    try {
      User user = await userRepository.register();
      // user.displayName = emailController.text;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await userRepository.signOut();
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
