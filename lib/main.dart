import 'package:flutter/material.dart';

import 'Post_bloc/post_bloc.dart';
import 'Post_bloc/post_events.dart';

import 'bloc/block_observation.dart';
import 'file:///C:/Users/ola77/AndroidStudioProjects/Posttask/lib/screens/homepage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Infinite Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: BlocProvider(
          create: (context) =>
          PostBloc(httpClient: http.Client())..add(PostFetched()),
          child: HomePage(),

      ),
      ),
    );
  }
}