


import 'package:flutter/material.dart';

class LoadingManger extends StatelessWidget {
  const LoadingManger({super.key, required this.isLoading, required this.child});
final bool isLoading;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      child,

      if(isLoading)...{
        Container(color: Colors.black.withOpacity(.07)),
        const Center(child: CircularProgressIndicator(),)}
    ],);
  }
}
