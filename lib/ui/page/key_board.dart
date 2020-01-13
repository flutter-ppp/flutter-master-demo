import 'package:flutter/material.dart';
import 'package:known_key_demo/utils.dart';

class KeyBoardPage extends StatefulWidget {
  @override
  _KeyBoardPageState createState() => _KeyBoardPageState();
}

class _KeyBoardPageState extends State<KeyBoardPage> {
  int total = 50000;
  int restAmount;
  final TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "请输入。。。"),
                onChanged: (s) {
                  restAmount = total - Utils.stringToInt(s);
                  secondController.text = restAmount.toString();
                  this.setState(() {});    // worked for me
                },
              ),
              TextFormField(
                controller: secondController,
                enabled: false,
                decoration: InputDecoration(hintText: ""),
              ),
              Text(
                '数字： $restAmount',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AmountContainer extends StatefulWidget {


  @override
  _AmountContainerState createState() => _AmountContainerState();
}

class _AmountContainerState extends State<AmountContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
      ),
    );
  }
}
