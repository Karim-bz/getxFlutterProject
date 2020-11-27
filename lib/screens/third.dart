import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxproject/controllers/SommeControl.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ThirdPageView(),
      ),
    );
  }
}

class ThirdPageView extends StatefulWidget {
  @override
  _ThirdPageViewState createState() => _ThirdPageViewState();
}

class _ThirdPageViewState extends State<ThirdPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetX<SommeController>(
                  builder: (_) {
                    return Text(
                      'Counter #1:    ${_.count1.value}',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    );
                  },
                ),
                GetX<SommeController>(
                  builder: (_) {
                    return Text(
                      'Counter #2:    ${_.count2.value}',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Increment Counter #1"),
                  onPressed: () {
                    Get.find<SommeController>().increment();
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Increment Counter #2"),
                  onPressed: () {
                    Get.find<SommeController>().increment2();
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Sotre Values"),
                  onPressed: () {
                    GetStorage box = GetStorage();
                    box.write(
                        "count1", Get.find<SommeController>().count1.value);
                    box.write(
                        "count2", Get.find<SommeController>().count2.value);
                  },
                ),
                GetX<SommeController>(
                  builder: (_) {
                    print("Sum build");
                    return Text(
                      'Counter #2:    ${_.sum}',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
