import 'package:flutter/material.dart';
import 'package:note_app/presentation/home/widget/custom_appbar.dart';
import 'package:note_app/presentation/home/widget/note_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: const [
            CustomAppbar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}
