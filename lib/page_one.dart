import 'package:animation/animation.dart';
import 'package:animation/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                FadePage(
                  page: const PageTwo(),
                ),
              );
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.white,
              ),
            ),
            child: const Text(
              'Go To Page Two',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
