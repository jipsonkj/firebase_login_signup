import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Stream<User?> get authState => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
}) async{
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
    );
  }
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async{
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  Future<void> signout() async {
    await _firebaseAuth.signOut();
  }
}