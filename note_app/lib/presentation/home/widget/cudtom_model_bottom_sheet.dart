import 'package:flutter/material.dart';
import 'package:note_app/presentation/home/widget/custom_text_form_field.dart';

class CustomModelSheet extends StatefulWidget {
  const CustomModelSheet({super.key});

  @override
  State<CustomModelSheet> createState() => _CustomModelSheetState();
}

class _CustomModelSheetState extends State<CustomModelSheet> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formState,
        autovalidateMode: _autovalidateMode,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24),
              height: 6,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
            ),
            const CustomTextFormField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFormField(
              maxLines: 5,
              hintText: 'Content',
            ),
            const Spacer(),
            CustomMaterialBottom(
              textBotton: 'Add',
              onPressed: () {
                if (_formState.currentState!.validate()) {
                } else {
                  _autovalidateMode = AutovalidateMode.disabled;
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomMaterialBottom extends StatelessWidget {
  const CustomMaterialBottom(
      {super.key, required this.textBotton, this.onPressed});
  final String textBotton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      minWidth: double.infinity,
      color: Colors.blue,
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        textBotton,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}
