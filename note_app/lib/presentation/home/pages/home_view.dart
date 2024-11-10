import 'package:flutter/material.dart';
import 'package:note_app/presentation/home/widget/cudtom_model_bottom_sheet.dart';
import 'package:note_app/presentation/home/widget/custom_appbar.dart';
import 'package:note_app/presentation/home/widget/note_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            useSafeArea: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
            context: context,
            builder: (context) => const CustomModelSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomAppbar(),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    NoteItem(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
