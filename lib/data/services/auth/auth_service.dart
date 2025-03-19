import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rudo_wealth_test/domain/core/failure/failure.dart';
import 'package:rudo_wealth_test/domain/core/success/success.dart';
import 'package:rudo_wealth_test/domain/models/auth/auth_model.dart';
import 'package:rudo_wealth_test/domain/models/auth/otp_model.dart';
import 'package:rudo_wealth_test/domain/models/auth/phone_model.dart';
import 'package:rudo_wealth_test/domain/repositories/auth_repo.dart';

class AuthService implements AuthRepo {
  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
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
        return Left(Failure(message: 'No account find with given email'));
      } else if (e.code == 'wrong-password') {
        return Left(Failure(message: 'Wrong password'));
      } else {
        return Left(Failure(message: e.code));
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> sendOtp(PhoneModel phoneModel) async {
    try {
      String? verifyId;
      Completer<String?> completer = Completer<String>();
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${phoneModel.phone}',
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (error) {
          log('error in otp sending');
          verifyId = null;
          completer.complete(null);
        },
        codeSent: (String verificationId, int? resendToken) {
          log('otp send successfully');
          verifyId = verificationId;
          completer.complete(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      await completer.future;
      if (verifyId == null) {
        return Left(Failure(message: 'failed to send otp'));
      } else {
        return Right(Success(message: verifyId));
      }
    } catch (e) {
      return Left(Failure(message: 'failed to send otp'));
    }
  }

  @override
  Future<Either<Failure, Success>> verifyOtp(
      String verificationId, OtpModel otpModel) async {
    try {
      log('verification id = $verificationId ,\n codesms => ${otpModel.smsCode}');
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpModel.smsCode);
      await FirebaseAuth.instance.signInWithCredential(credential);
      log('verify otp successfuly');
      return Right(Success(message: 'user authenticated successfully'));
    } catch (error) {
      log('got error in verify otp => ${error.toString()}');
      return Left(Failure(message: 'failed to verify otp'));
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
