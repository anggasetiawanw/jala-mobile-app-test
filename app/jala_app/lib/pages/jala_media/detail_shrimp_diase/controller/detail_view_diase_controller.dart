import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/core/models/diases_news/diases_news.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewDiaseController extends GetxController {
      late DiasesNews diasesNews;
  late final WebViewController webView;

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;
    diasesNews = Get.arguments;
    webView = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://app.jala.tech/web_view/diseases/${diasesNews.id}')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://app.jala.tech/web_view/diseases/${diasesNews.id}'));
    isLoading.value = false;
  }

  void shareDiases() {
    Share.shareUri(Uri.parse("https://app.jala.tech/diseases/${diasesNews.id}"));
  }
}