import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rudo_wealth_test/application/bussiness_logic/dashboard/dashboard_bloc.dart';

import 'package:rudo_wealth_test/application/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:rudo_wealth_test/domain/models/dashbord/slide.dart';

import '../../../../domain/models/dashbord/screen.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({
    super.key,
  });

  void completeOnboarding(BuildContext context) {
    // Navigate to Dashboard after completing Onboarding
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ScreenDashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.hasError || state.dashbord == null) {
          return const Center(child: Text("Failed to load onboarding data"));
        }

        // Find the "app_tour" screen in the JSON
        final Screen? onboardingScreen = state.dashbord!.screens?.firstWhere(
          (screen) => screen.name?.toLowerCase() == "app_tour",
          orElse: () => Screen(name: "", slides: []),
        );

        // Get the slides from the onboarding screen
        final List<Slide> slides = onboardingScreen?.slides ?? [];

        // If no slides are available, show an error message
        if (slides.isEmpty) {
          return const Center(child: Text("No onboarding slides found"));
        }

        return RefreshIndicator(
          onRefresh: () async {
            context.read<DashboardBloc>().add(const GetAllData()); // Refresh
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: IntroductionScreen(
                  pages: slides
                      .map(
                        (slide) => PageViewModel(
                          title: slide.title ?? "",
                          body: slide.description ?? "",
                          image: slide.image != null
                              ? Image.network(
                                  slide.image!,
                                  height: 250,
                                  fit: BoxFit.cover,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  },
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Center(
                                        child:
                                            Icon(Icons.broken_image, size: 50));
                                  },
                                )
                              : const SizedBox.shrink(),
                        ),
                      )
                      .toList(),
                  done: const Text("Done",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  next: const Text("Next"),
                  skip: const Text("Skip"),
                  showSkipButton: true,
                  onDone: () => completeOnboarding(context),
                  onSkip: () => completeOnboarding(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
