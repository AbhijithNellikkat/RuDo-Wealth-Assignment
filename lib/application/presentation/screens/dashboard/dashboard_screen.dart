import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/dashboard/dashboard_bloc.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/constants.dart';

import '../../../../domain/models/dashbord/screen.dart';
import '../../utils/dialogs/dialogs.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.logOutSuccess != null && state.logOutSuccess!) {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.signInPage, (route) => false);
              }
            },
            child: IconButton(
              onPressed: () {
                logoutDialog(context);
              },
              icon: const Icon(
                Iconsax.logout,
                color: kwhite,
              ),
            ),
          ),
          kWidth20,
        ],
        automaticallyImplyLeading: false,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<DashboardBloc>().add(const GetAllData()); // Refresh data
        },
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            // If the data is still loading
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            // If there's an error or no dashboard data
            if (state.hasError || state.dashbord == null) {
              return const Center(child: Text("Failed to load dashboard"));
            }

            // Extracting the navigation items from the dashboard
            final navigationItems = state.dashbord!.screens
                    ?.firstWhere((screen) => screen.name == "dashboard",
                        orElse: () => Screen(name: '', navigation: []))
                    .navigation
                    ?.map((nav) => {"icon": nav.icon, "label": nav.label})
                    .toList() ??
                [];

            return ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: const [],
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          final navigationItems = state.dashbord?.screens
                  ?.firstWhere((screen) => screen.name == "dashboard",
                      orElse: () => Screen(name: '', navigation: []))
                  .navigation
                  ?.map((nav) => {"icon": nav.icon, "label": nav.label})
                  .toList() ??
              [];

          return navigationItems.isNotEmpty
              ? BottomNavigationBar(
                  backgroundColor: kgrey.withOpacity(0.1),
                  currentIndex: state.selectedIndex,
                  unselectedItemColor: kgrey,
                  elevation: 0,
                  showUnselectedLabels: false,
                  selectedLabelStyle: const TextStyle(fontSize: 12),
                  showSelectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: kprimary,
                  items: navigationItems.map((item) {
                    return BottomNavigationBarItem(
                      icon: Icon(getIconData(item["icon"] ?? '')),
                      label: item["label"],
                    );
                  }).toList(),
                  onTap: (index) {
                    context
                        .read<DashboardBloc>()
                        .add(DashboardEvent.updateSelectedIndex(index));
                  },
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }

  IconData getIconData(String iconName) {
    switch (iconName) {
      case "home":
        return Icons.home;
      case "person":
        return Icons.person;
      default:
        return Icons.warning_rounded; // Default icon if unknown
    }
  }
}
