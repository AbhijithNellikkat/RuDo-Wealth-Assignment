import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rudo_wealth_test/domain/models/dashbord/dashbord.dart';
import 'package:rudo_wealth_test/domain/repositories/dashboard_repo.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardRepo dashboardService;

  DashboardBloc(this.dashboardService) : super(DashboardState.initial()) {
    on<GetAllData>(getAllData);
    on<UpdateSelectedIndex>(onUpdateSelectedIndex);
  }
  Future<void> getAllData(
      GetAllData event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(
      hasError: false,
      isLoading: true,
    ));

    final result = await dashboardService.getUIConfig();

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, hasError: true));
      },
      (success) {
        emit(state.copyWith(isLoading: false, dashbord: success));
      },
    );
  }

  void onUpdateSelectedIndex(
      UpdateSelectedIndex event, Emitter<DashboardState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
