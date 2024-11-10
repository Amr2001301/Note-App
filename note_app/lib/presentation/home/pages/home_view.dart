import 'package:flutter/material.dart';
import 'package:note_app/presentation/home/widget/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: const [CustomAppbar()],
        ),
      ),
    );
  }
}
