import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  Function(String) updateState;

  Input(this.updateState);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  var inputText1 = "";
  var inputText2 = "";

  clearField() {
    setState(() {
      inputText1 = "";
      inputText2 = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '아침',
                      ),
                      onChanged: (text) {
                        inputText1 = text;
                      }
                  ),
                ),
                const SizedBox(
                  width: 20,
                )
                , const SizedBox(
                  width: 80,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Text(
                      style: TextStyle(fontSize: 30),
                      '을(를)',
                    ),
                  ),
                ),
              ]
          ),

          const SizedBox(
            height: 20,
          ),

          SizedBox(
            width: 200,
            child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '먹었다',
                ),
                onChanged: (text) {
                  inputText2 = text;
                }
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              widget.updateState('$inputText1을(를) $inputText2');

              final snackBar = SnackBar(
                content: Text('$inputText1을(를) $inputText2'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Submit'),
          )
          ,
        ]
        ,
      )
      ,
    );
  }
}