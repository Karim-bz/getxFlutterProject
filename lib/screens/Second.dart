import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SecondPageView(),
    );
  }
}

class SecondPageView extends StatefulWidget {
  SecondPageView({Key key}) : super(key: key);

  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  GetStorage box = GetStorage();
  var arg = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(arg.toString()),
              Text(box.read('email').toString()),
            ],
          ),
        ),
      ),
    );
  }
}
