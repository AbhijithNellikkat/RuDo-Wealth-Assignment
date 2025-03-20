import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:rudo_wealth_test/domain/core/failure/failure.dart';
import 'package:rudo_wealth_test/domain/models/dashbord/dashbord.dart';
import 'package:rudo_wealth_test/domain/repositories/dashboard_repo.dart';

class DashboardService implements DashboardRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<Failure, Dashbord>> getUIConfig() async {
    try {
      // Fetch the first document inside the "ui_config" collection
      QuerySnapshot snapshot = await _firestore.collection("ui_config").get();

      if (snapshot.docs.isNotEmpty) {
        var data = snapshot.docs.first.data() as Map<String, dynamic>;
        log('Fetched Data: $data');

        // Convert JSON to Dashbord model
        Dashbord dashboard = Dashbord.fromJson(data);
        return Right(dashboard);
      } else {
        return Left(Failure(message: "No UI configuration found in Firestore"));
      }
    } catch (e) {
      log("Error fetching UI config: $e");
      return Left(
          Failure(message: "Error fetching UI config: ${e.toString()}"));
    }
  }
}
