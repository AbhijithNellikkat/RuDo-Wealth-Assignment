part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.getAllData() = GetAllData;
  const factory DashboardEvent.updateSelectedIndex(int index) =
      UpdateSelectedIndex;
}
