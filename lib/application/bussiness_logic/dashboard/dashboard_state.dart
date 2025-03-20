part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required bool isLoading,
    required bool hasError,
    Dashbord? dashbord,
    required int selectedIndex,
  }) = _DashboardState;

  factory DashboardState.initial() =>
      const DashboardState(isLoading: false, hasError: false, selectedIndex: 0);
}
