import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:web_view/controller/homecontroller.dart';

class HomeScreen extends GetView<HomeController> {
   HomeScreen({Key? key}) : super(key: key);

  final homecontroller = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: controller.appbarClick, icon: Icon(Icons.account_circle))],
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("webveiw"),
      ),
      body: Center(
        child: InAppWebView(
          onWebViewCreated:
          controller.oncreateview,
          onLoadStart: controller.onLoadStart,
          onLoadStop: controller.onLoadStop,
          initialUrlRequest: URLRequest(
            url: Uri.parse("https://velog.io/@steadygo247/FlutterGetx"),
          ),
        ),
      ),
    );
  }
}
