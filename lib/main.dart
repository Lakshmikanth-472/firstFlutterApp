// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   Widget build(BuildContext context) {
   return MaterialApp(
      //  title: 'Welcome to Flutter',
     title: 'Startup Name Generator',
	        home: Scaffold(
	          appBar: AppBar(
          //  title: const Text('Welcome to Flutter'),
        title: const Text('Startup Name Generator'),
          ),
	          body: const Center(
	            child: RandomWords(),
	          ),)

	      );
	    }
	  }
  //    class RandomWords extends StatefulWidget {
  // const RandomWords({super.key});
 class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
   final _biggerFont = const TextStyle(fontSize: 18);
	    @override
  //  State<RandomWords> createState() => _RandomWordsState();
   Widget build(BuildContext context) {
     return ListView.builder(
       padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
       if (i.isOdd) return const Divider(); /*2*/
 
         final index = i ~/ 2; /*3*/
         if (index >= _suggestions.length) {
           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
         }
         return ListTile(
           title: Text(
             _suggestions[index].asPascalCase,
             style: _biggerFont,
           ),         );
       },
     );
   }
	  }
// 35	- class _RandomWordsState extends State<RandomWords> {
class RandomWords extends StatefulWidget {
   const RandomWords({super.key});
 
    @override
// 37	-   Widget build(BuildContext context) {
// 38	-     final wordPair = WordPair.random();
// 39	-     return Text(wordPair.asPascalCase);
// 40	-   }
  State<RandomWords> createState() => _RandomWordsState();
	  }