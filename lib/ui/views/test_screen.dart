import 'package:flutter/material.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_shoe_list.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('My App'),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const HomeShoeList();
              },
            ),
          ),
        ],
      ),
    );
  }
}
