import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/block_observation.dart';
import 'package:flutter_infinite_list/homepage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'block_post_states/post_bloc.dart';
import 'block_post_states/post_events.dart';
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