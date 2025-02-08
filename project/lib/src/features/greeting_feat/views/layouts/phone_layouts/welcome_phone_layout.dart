part of '../../screens/welcome_screen.dart';

class _WelcomePhoneLayout extends StatelessWidget {
  final HelloWorldController helloWorldController;

  const _WelcomePhoneLayout({
    required this.helloWorldController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Obx(() => _GreetingWidget(
                    greeting: helloWorldController.hello.value.tr,
                  )),
              const SizedBox(height: 10.0),
              _InfoWidget(
                notice: Lang.welcomeInfo.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
