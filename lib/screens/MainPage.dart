import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxproject/screens/Second.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MainPageView(),
    );
  }
}

class MainPageView extends StatefulWidget {
  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final TextEditingController emailController = TextEditingController();
  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    box.writeIfNull('email', 'test email');
    print(box.read('email'));
    return Container(
      child: Scaffold(
        appBar:
            AppBar(title: Text("title".trArgs([box.read('email').toString()]))),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          onPressed: () {
            box.write('email', emailController.text);
            Get.to(SecondPage(), arguments: 'this is argument');
          },
          icon: Icon(Icons.add),
          label: Text('NEXT'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  //obscureText: false, //make a password format
                  controller: emailController,
                ),
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Validate Email"),
                onPressed: () {
                  GetUtils.isEmail(emailController.text)
                      ? Get.snackbar("correct".tr, "formatgood".tr,
                          backgroundColor: Colors.green,
                          snackPosition: SnackPosition.BOTTOM)
                      : Get.snackbar("incorrect".tr, "formatbad".tr,
                          backgroundColor: Colors.redAccent,
                          snackPosition: SnackPosition.TOP);
                },
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton.icon(
                color: Colors.blueGrey,
                textColor: Colors.white,
                onPressed: () {
                  Get.updateLocale(Locale('fr'));
                },
                icon: Icon(Icons.g_translate_outlined, size: 18),
                label: Text("changer FR"),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton.icon(
                color: Colors.blueGrey,
                textColor: Colors.white,
                onPressed: () {
                  Get.updateLocale(Locale('en'));
                },
                icon: Icon(Icons.g_translate_outlined, size: 18),
                label: Text("changer EN"),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton.icon(
                color: Colors.blueGrey,
                textColor: Colors.white,
                onPressed: () {
                  Get.updateLocale(Get.deviceLocale);
                },
                icon: Icon(Icons.g_translate_outlined, size: 18),
                label: Text("change to Device Language"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
