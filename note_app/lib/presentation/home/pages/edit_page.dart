import 'package:flutter/material.dart';
import 'package:note_app/presentation/home/widget/custom_appbar.dart';
import 'package:note_app/presentation/home/widget/custom_text_form_field.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(
              icon: const Icon(Icons.check),
              repalce: true,
              titlel: 'Edite Note',
              onPressed: () {
                if (_formState.currentState!.validate()) {
                } else {
                  _autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            SingleChildScrollView(
              child: Form(
                key: _formState,
                autovalidateMode: _autovalidateMode,
                child: const Column(
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
              ),
            )
          ],
        ),
      )),
    );
  }
}
