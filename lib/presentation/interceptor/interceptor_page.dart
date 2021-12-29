import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InterceptorPage extends HookWidget {
  final String product;

  const InterceptorPage(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(product),
      ),
    );
  }
}
