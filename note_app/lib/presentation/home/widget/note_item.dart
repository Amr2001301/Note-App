import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            subtitle: const Text(
              'Build your career with Amr Rakha',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            trailing:
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('may,27,2024')
        ],
      ),
    );
  }
}
