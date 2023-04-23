import 'package:flutter/widgets.dart';

class ErrorScreen extends StatelessWidget {
  final Exception error;
  const ErrorScreen({
    required this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error.toString()),
    );
  }
}
