import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      required this.icon,
      required this.repalce,
      required this.titlel});
  final Widget icon;
  final bool repalce;
  final String titlel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        repalce
            ? Container(
                margin: const EdgeInsets.only(right: 20),
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              )
            : const SizedBox.shrink(),
        Text(
          titlel,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.1),
              borderRadius: BorderRadius.circular(16)),
          child: IconButton(onPressed: () {}, icon: icon),
        )
      ],
    );
  }
}
