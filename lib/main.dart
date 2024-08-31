import 'dart:io';

import 'package:fimisraj/src/app.dart';
import 'package:fimisraj/src/features/core/data/models/model/add_date.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global= MyHttpoverrides();
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  await GetStorage.init();
  runApp( const FiMisrajMyApp());
}
class MyHttpoverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback =
        (X509Certificate cert, String host, int port)=>true;
  }
}
