

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{


  late InAppWebViewController inAppWebViewController;

   void oncreateview (InAppWebViewController controller) {
     print('oncreateview ');
      inAppWebViewController = controller;
   }

   void onLoadStart(InAppWebViewController controller, Uri? url) {
     print('onLoadStart ');

   }

   void onLoadStop(InAppWebViewController controller, Uri? url) =>
     print('onLoadStop');



   void appbarClick(){
     print('appbarclick');
     inAppWebViewController.loadUrl(urlRequest:  URLRequest(
       url: Uri.parse("https://velog.io/@steadygo247/FlutterSinglechildscrollview-glowphysics"),
     ),);

   }






}