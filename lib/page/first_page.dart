import 'package:flutter/material.dart';
import 'package:flutter_stateful_lifecycle/widget/number_widget.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() {
    print('FirstPage: CreateState');

    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
  int number = 1;

  @override
  void initState() {
    // TODO: implement initState
    print('FirstPage: InitState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('FirstPage: DidChangeDependencies');
  }

  @override
  void deactivate() {
    print('FirstPage: Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('FirstPage: Dispose');
    super.dispose();
  }

  @override
  void didUpdateWidget(FirstPage oldWidget) {
    print('FirstPage: DidUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('FirstPage: build');
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  print('FirstPage: setState');
                  number += 1;
                });
              }),
        ],
      ),
      body: NumberWidget(number: number),
    );
  }
}
