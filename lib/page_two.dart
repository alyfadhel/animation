import 'package:animation/animation.dart';
import 'package:animation/page_one.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                FadePage(
                  page: const PageOne(),
                ),
              );
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white)),
            child: const Text(
              'Go To Page One',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
          ),
        ),
      ),
    );
  }
}
