

import 'package:flutter/material.dart';

class CustomerStatefulWidget extends StatefulWidget {
  final String _name;

  CustomerStatefulWidget(this._name);

  @override
  State<StatefulWidget> createState() {
    print("TAG, CustomerStatefulWidget:" + _name + "  build");
    return CustomerState("CustomerStateA");
  }
}

class CustomerState extends State<CustomerStatefulWidget> {
  String _name;

  CustomerState(this._name) {
    print("TAG, CustomerState:" + _name + "  构造");
  }

  int _customerStatelessText = 0;

  @override
  Widget build(BuildContext context) {
    print("TAG, " + _name + "  build");
    return Container(
      margin: EdgeInsets.only(top: 100),
      color: Colors.yellow,
      child: Column(
        children: <Widget>[
          CustomerStatelessWidget("BBB", "BBB"),
          CustomerStatelessWidget(
              "AAA", "AAA:" + _customerStatelessText.toString()),
          GestureDetector(
            onTap: () {
              print("Click My");
              setState(() {
                _customerStatelessText++;
              });
            },
            child: Text("Click My"),
          )
        ],
      ),
    );
  }
}

class CustomerStatelessWidget extends StatelessWidget {
  final String _text;
  final String _name;

  CustomerStatelessWidget(this._name, this._text) {
    print("TAG, CustomerStatelessWidget:" + _name + "  构造");
  }

  @override
  Widget build(BuildContext context) {
    print("TAG, CustomerStatelessWidget:" + _name + "  build");
    if (_name == "BBB") {
//      for (int i = 0; i < 10000000; i++) {
//        print("for:" + i.toString());
//      }
      print("我是一个耗时方法，耗时2s");
    }
    return Text(_text);
  }
}