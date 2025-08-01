import 'package:flutter/material.dart';

class AppNavigator {
  // Mevcut sayfayı yeni bir sayfayla değiştirir(geriye basınca önceki sayfaya dönülmez)
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  // yeni bir sayfa açar, mevcut sayfa altında tutulur(geriye basınca önceki sayfaya dönebilirsin)
  static void push(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }
  //tüm sayfa geçmişini siler, sadece yeni açılan sayfa kalır
  //(genellikle login/logout gibi, eski sayfalara hiç dönülmemesi gereken yerlerde kullanılır)
  static void pushAndRemove(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (route) => false,
    );
  }
}
