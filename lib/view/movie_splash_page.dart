import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_search/resources/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColors.primaryColor,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 100),
              Text(
                "Movie Search",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyColors.primaryAccentColor,
                  fontSize: 48,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "omdbapi.com",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: MyColors.secondaryAccentColor,
                  fontSize: 22,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w400,
                ),
              ),
              _controller.isCompleted
                  ? const Spacer()
                  : SplashScreenAnimation(controller: _controller),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFDC2424),
                      Color(0xFF4A569D),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 0.7],
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (route) => false);
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreenAnimation extends StatelessWidget {
  const SplashScreenAnimation({
    super.key,
    required AnimationController controller,
  }) : _controller = controller;

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/lottie/animations2.json',
        controller: _controller,
        repeat: false,
        height: 5.5 * MediaQuery.of(context).size.height / 10,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward();
        },
      ),
    );
  }
}
