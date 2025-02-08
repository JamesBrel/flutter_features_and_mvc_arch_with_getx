part of '../screens/welcome_screen.dart';

class _InfoWidget extends StatelessWidget {
  final String notice;

  const _InfoWidget({
    required this.notice,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      notice,
      style: TextStyle(
        fontSize: 20.0.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}
