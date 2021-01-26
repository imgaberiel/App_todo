import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx/res/colors.dart';
import 'package:flutter_getx/screen/note_list_screen.dart';
import 'package:get/get.dart';

import 'db/db_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DBHelper.initDb();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: colorPrimaryDark));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Note',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: colorPrimary,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      defaultTransition: Transition.rightToLeft,
      home: NoteListScreen(),
    );
  }
}
