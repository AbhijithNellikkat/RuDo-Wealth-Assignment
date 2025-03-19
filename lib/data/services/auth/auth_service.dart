import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rudo_wealth_test/domain/core/failure/failure.dart';
import 'package:rudo_wealth_test/domain/core/success/success.dart';
import 'package:rudo_wealth_test/domain/models/auth/auth_model.dart';
import 'package:rudo_wealth_test/domain/repositories/auth_repo.dart';

class AuthService implements AuthRepo {
  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return Left(
            Failure(message: "Google Sign-In was canceled. Please try again."));
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return Right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmail(
      {required AuthModel signUp}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: signUp.email, password: signUp.password);
      // userCredential.user!.sendEmailVerification();
      return Right(userCredential);
    } catch (e) {
      return Left(Failure(message: 'Failed to signup'));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithEmail(
      {required AuthModel login}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: login.email, password: login.password);
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'INVALID_LOGIN_CREDENTIALS' ||
          e.code == 'invalid-credential') {
        return Left(Failure(message: 'No account found with the given email'));
      } else if (e.code == 'wrong-password') {
        return Left(Failure(message: 'Incorrect password, please try again'));
      } else if (e.code == 'user-not-found') {
        return Left(Failure(message: 'No user found with this email'));
      } else if (e.code == 'too-many-requests') {
        return Left(
            Failure(message: 'Too many failed attempts. Try again later'));
      } else {
        return Left(Failure(message: 'Authentication error: ${e.message}'));
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return Right(Success(message: 'sign out successfully'));
    } catch (e) {
      return Left(Failure(message: 'failed to sign_out Please try again'));
    }
  }
}
