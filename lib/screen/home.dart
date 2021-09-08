import 'package:flutter/material.dart';
import 'package:movie/provider/count_provider.dart';
import 'package:movie/screen/ui/count_home.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  late CountProvider _countProvider;

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Sample'),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _countProvider.add();
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove();
            },
          ),
        ],
      ),
    );
  }
}
