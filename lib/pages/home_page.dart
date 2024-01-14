import 'package:flutter/material.dart';
import 'package:flutter_pad_todo_list/widgets/button.dart';
import 'package:flutter_pad_todo_list/widgets/item.dart';
import 'package:flutter_pad_todo_list/widgets/page_title.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46CAFE),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 222,
              color: const Color(0xFF46CAFE),
              child: const Center(
                child: PageTitle(
                  title: "FlutterPad Todo List",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    // Branco
                    fontFamily: 'Poppins',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    height: 1.0, // 100% line height
                  ),
                ),
              ),
            ),
            const Center(
              child: Item(
                icon: Icons.star,
                text: 'Favorito',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 24.0, bottom: 24.0, left: 16.0, right: 16.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Finalizadas",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            const Center(
              child: Item(
                icon: Icons.star,
                text: 'Favorito',
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 24.0),
              child: const Button(title: 'Nova Tarefa'),
            )
          ],
        ),
      ),
    );
  }
}
