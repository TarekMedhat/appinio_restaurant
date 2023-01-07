import 'package:flutter/cupertino.dart';

class AppLoadingCircle extends StatelessWidget {
  const AppLoadingCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(
        radius: 12,
      ),
    );
  }
}
