import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/const/color_app.dart';
import 'package:note_app/presentation/home/model/note_model.dart';
import 'package:note_app/presentation/home/pages/home_view.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('note');
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const NoteApp(),
  ));
}

getApplicationDocumentsDirectory() {}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ColorApp.kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeView(),
    );
  }
}
