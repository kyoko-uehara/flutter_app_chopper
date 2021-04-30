import 'package:flutter/material.dart';
import 'package:flutter_app_chopper/home_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_chopper/chopper/post_api_service.dart';


void main() {
  runApp(MyApp());
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


