import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  LoadingOverlay({
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if(isLoading){
      return Center(child: CircularProgressIndicator(),);
    }
    return child;
  }
}
