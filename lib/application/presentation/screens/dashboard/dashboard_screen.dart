import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/dashboard/dashboard_bloc.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/screens/onboarding/onboarding_screen.dart';
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
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenOnboarding()),
                );
              },
              icon: const Icon(
                Icons.app_shortcut_rounded,
                color: kwhite,
              )),
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
    switch (iconName.toLowerCase()) {
      case "home":
        return Iconsax.home;
      case "person":
      case "profile":
      case "user":
        return Iconsax.user;
      case "settings":
      case "gear":
        return Iconsax.setting;
      case "search":
        return Iconsax.search_normal;
      case "notifications":
      case "bell":
        return Iconsax.notification;
      case "message":
      case "chat":
        return Iconsax.message;
      case "camera":
        return Iconsax.camera;
      case "image":
      case "photo":
        return Iconsax.gallery;
      case "video":
        return Iconsax.video;
      case "location":
      case "map":
        return Iconsax.location;
      case "email":
      case "mail":
        return Iconsax.sms;
      case "phone":
        return Iconsax.call;
      case "lock":
      case "security":
        return Iconsax.lock;
      case "cart":
      case "shopping":
        return Iconsax.shopping_cart;
      case "favorite":
      case "heart":
        return Iconsax.heart;
      case "info":
        return Iconsax.info_circle;
      case "help":
      case "question":
        return Iconsax.support;
      case "logout":
      case "exit":
        return Iconsax.logout;
      case "dashboard":
        return Iconsax.element_4;
      case "check":
      case "done":
        return Iconsax.tick_circle;
      case "error":
        return Iconsax.warning_2;
      case "delete":
      case "trash":
        return Iconsax.trash;
      default:
        return Iconsax.warning_2; // Default icon for unknown names
    }
  }
}
