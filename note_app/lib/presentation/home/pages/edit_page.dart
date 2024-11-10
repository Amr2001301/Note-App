import 'package:flutter/material.dart';
import 'package:note_app/presentation/home/widget/custom_appbar.dart';
import 'package:note_app/presentation/home/widget/custom_text_form_field.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(
              icon: Icon(Icons.check),
              repalce: true,
              titlel: 'Edite Note',
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  CustomTextFormField(hintText: 'Edit note'),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    hintText: 'Edit content',
                    maxLines: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
