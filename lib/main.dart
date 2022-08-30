// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

// class RandomWords extends StatefulWidget {
//   const RandomWords({super.key});

//   @override
//   State<RandomWords> createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   @override
//   Widget build(BuildContext context) {
//     final wordPair = WordPair.random();
//     final _suggestions = <WordPair>[];
//     final _biggerFont = const TextStyle(fontSize: 18);
//     // return Text(wordPair.asPascalCase);
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: /*1*/ (context, i) {
//         if (i.isOdd) return const Divider(); /*2*/

//         final index = i ~/ 2; /*3*/
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//         }
//         return ListTile(
//           title: Text(
//             _suggestions[index].asPascalCase,
//             style: _biggerFont,
//           ),
//         );
//       },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    // Widget titleSection = Container(
    //   padding: const EdgeInsets.all(32),
    // );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.arrow_back, 'back'),
        _buildButtonColumn(color, Icons.arrow_forward, 'forward'),
        // _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Ở một cái giếng nọ có một con ếch sống lâu năm dưới đáy giếng,'
        'xung quanh nó chỉ toàn là những con nhái, ốc, cua bé nhỏ.'
        'Ở dưới đáy giếng nhìn lên trời, chú ếch chỉ có thể thấy được một'
        'khoảng trời rất bé như cái vung vậy. Mỗi lần ếch cất tiếng kêu ồm ộp'
        'đều làm các con vật khác trong giếng hoảng sợ nên ếch hênh hoang tự coi'
        'mình là chúa tể . Nó đã nghĩ thầm trong đầu rằng: “Tất cả vũ trụ chỉ '
        'có như thế, trời bé bằng vung". Vì có suy nghĩ như thế nên nó cứ nhìn'
        'lên bầu trời bé xíu ấy và nghĩ nó thì oai phong giống như một vị chúa '
        'tể. Ngày nào cũng thấy như vậy nên nó đã khẳng định bầu trời chỉ to bằng'
        'cái vung mà thôi. Và rồi một năm trời mưa rất to làm nước trong giếng đầy '
        'lên tràn bờ đưa ếch lên miệng giếng. Vẫn quen thói cũ nên ếch câng câng'
        'nhìn lên trời. Một điều bất ngờ đập vào mắt ếch chính là nó bỗng thấy '
        'cả một bầu trời rộng lớn gấp nhiều lần so với bầu trời bé như vung '
        'mà nó vẫn thấy khi ở bên dưới đáy giếng. Ếch không tin vào mắt mình'
        'và cảm thấy rất bực bội vì điều đó. Nó đã cất tiếng kêu ồm ộp để ra oai,'
        'ếch hi vọng sau những tiếng kêu của mình mọi thứ sẽ phải trở lại như '
        'ban đầu. Thế nhưng hiển nhiên là sau tiếng kêu của ếch mọi thứ vẫn vậy,'
        'bầu trời to lớn vẫn là bầu trời to lớn. Ếch càng lấy làm lạ và bực bội'
        'hơn nữa nên mải nhìn lên bầu trời không thèm để ý đến xung quanh nên nó'
        'đã bị một chú trâu đi ngang qua đó dẫm chết.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Welcome to Story',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Story'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/1.jpg',
              width: 600,
              height: 400,
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
            // titleSection,
            textSection,
            // buttonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Story'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Ở một cái giếng nọ có một con ếch sống lâu năm dưới đáy giếng,'
        'xung quanh nó chỉ toàn là những con nhái, ốc, cua bé nhỏ.'
        'Ở dưới đáy giếng nhìn lên trời, chú ếch chỉ có thể thấy được một'
        'khoảng trời rất bé như cái vung vậy. Mỗi lần ếch cất tiếng kêu ồm ộp'
        'đều làm các con vật khác trong giếng hoảng sợ nên ếch hênh hoang tự coi'
        'mình là chúa tể . Nó đã nghĩ thầm trong đầu rằng: “Tất cả vũ trụ chỉ '
        'có như thế, trời bé bằng vung". Vì có suy nghĩ như thế nên nó cứ nhìn'
        'lên bầu trời bé xíu ấy và nghĩ nó thì oai phong giống như một vị chúa '
        'tể. Ngày nào cũng thấy như vậy nên nó đã khẳng định bầu trời chỉ to bằng'
        'cái vung mà thôi. Và rồi một năm trời mưa rất to làm nước trong giếng đầy '
        'lên tràn bờ đưa ếch lên miệng giếng. Vẫn quen thói cũ nên ếch câng câng'
        'nhìn lên trời. Một điều bất ngờ đập vào mắt ếch chính là nó bỗng thấy '
        'cả một bầu trời rộng lớn gấp nhiều lần so với bầu trời bé như vung '
        'mà nó vẫn thấy khi ở bên dưới đáy giếng. Ếch không tin vào mắt mình'
        'và cảm thấy rất bực bội vì điều đó. Nó đã cất tiếng kêu ồm ộp để ra oai,'
        'ếch hi vọng sau những tiếng kêu của mình mọi thứ sẽ phải trở lại như '
        'ban đầu. Thế nhưng hiển nhiên là sau tiếng kêu của ếch mọi thứ vẫn vậy,'
        'bầu trời to lớn vẫn là bầu trời to lớn. Ếch càng lấy làm lạ và bực bội'
        'hơn nữa nên mải nhìn lên bầu trời không thèm để ý đến xung quanh nên nó'
        'đã bị một chú trâu đi ngang qua đó dẫm chết.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Welcome to Story',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Story'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/1.jpg',
              width: 600,
              height: 400,
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
            // titleSection,
            textSection,
            // buttonSection,
            // return
            // onTap: () {
            //   Navigator.pop(context);
            // },
            // child: const Text('Go back!'),
          ],
          // child: ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          // },
        ),
      ),
    );
    //   child: ElevatedButton(
    //     onPressed: () {
    //       Navigator.pop(context);
    //     },
    //     child: const Text('Go back!'),
    //   ),
    // ),
  }
}
