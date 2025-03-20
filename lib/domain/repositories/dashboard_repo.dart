import 'package:dartz/dartz.dart';
import 'package:rudo_wealth_test/domain/core/failure/failure.dart';
import 'package:rudo_wealth_test/domain/models/dashbord/dashbord.dart';

abstract class DashboardRepo {
  Future<Either<Failure, Dashbord>> getUIConfig();
}
