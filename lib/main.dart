import 'package:flutter/material.dart';
import './ans.dart';
import './que.dart';

// 186045

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void tapp() {
    setState(() {
      indeks += 1;
    });
    print('tapped');
  }

  var questions = [
    {
      'question': "Choose",
      'answer': [
        'Woman',
        'Man',
        'Kids',
        'Unisex'
      ]
    },
    {
      'question': "Select season",
      'answer': [
        'Summer',
        'Winter',
        'spring',
        'Fall'
      ]
    },
    {
      'question': "Select colection",
      'answer': [
        'Casual wear',
        'Office Wear',
        'Party Look',
        'Homewear',
        'Sports wear',
        'Outdoor Look',
        'Formal wear',
        'Accessories'
      ],
    },
    {
      'question': "Type of clothes",
      'answer': [
        'Coats and jackets',
        'Shirts',
        'jeans',
        'Shoes',
        'Bags',
        'Suits',
      ],
    }
  ];
  var indeks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clothes App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clothes App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Clothes(questions[indeks]['question'] as String),
            ...(questions[indeks]['answer'] as List<String>).map((answer) {
              return Ans(tapp, answer);
            }),
          ],
        ),
      ),
    );
  }
}
