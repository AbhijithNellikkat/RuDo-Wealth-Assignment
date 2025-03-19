import 'package:rudo_wealth_test/domain/models/auth/auth_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../core/failure/failure.dart';
import '../core/success/success.dart';
import '../models/auth/otp_model.dart';
import '../models/auth/phone_model.dart';

abstract class AuthRepo {
  /// Sign up with email and password
  Future<Either<Failure, UserCredential>> signUpWithEmail({
    required AuthModel signUp,
  });

  /// Sign in with email and password
  Future<Either<Failure, UserCredential>> signInWithEmail({
    required AuthModel login,
  });

  /// Send OTP to a phone number
  Future<Either<Failure, Success>> sendOtp(PhoneModel phoneModel);

  /// Sign in using Google authentication
  Future<Either<Failure, UserCredential>> signInWithGoogle();

  /// Verify OTP for phone authentication
  Future<Either<Failure, Success>> verifyOtp(
    String verificationId,
    OtpModel otpModel,
  );

  /// Sign out the current user
  Future<Either<Failure, Success>> signOut();
}
