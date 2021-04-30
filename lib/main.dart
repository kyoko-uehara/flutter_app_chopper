import 'package:flutter/material.dart';
import 'package:flutter_app_chopper/home_page.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_chopper/chopper/post_api_service.dart';


void main() {
  _setupLogging();
  runApp(MyApp());
}

  void _setupLogging(){
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((rec) {
      print('${rec.level.name}:${rec.time}:${rec.message}');
    });
  }

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PostApiService.create(),
      dispose: (context, PostApiService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}


