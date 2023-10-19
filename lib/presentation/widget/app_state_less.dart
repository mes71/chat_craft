import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppStateLess<S> extends GetView<S> {
  const AppStateLess({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appBar(context),
        body: SafeArea(child: body(context)),
      );

  // Abstract method that should be implemented by subclasses
  Widget body(BuildContext context);

  // Abstract method that should be implemented by subclasses
  PreferredSizeWidget? appBar(BuildContext context) => null;
}
