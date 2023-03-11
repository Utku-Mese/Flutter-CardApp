import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:deneme2/components/cards.dart';
import 'package:deneme2/components/navigation_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  static int _itemCount = 0;

  static int get itemCount => _itemCount;
}

class _MyHomePageState extends State<MyHomePage> {
  int get itemCount => MyHomePage._itemCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => resetCards(),
            icon: const Icon(
              Icons.delete,
            ),
          ),
          IconButton(
            onPressed: () => addCard(),
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
        title: Text(
          "Welcome",
          style: GoogleFonts.actor(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 4,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        toolbarHeight: 60,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Color.fromARGB(255, 125, 34, 243),
              Color.fromARGB(255, 87, 90, 250),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) => const Cards(text: "Utku Mese"),
          itemCount: MyHomePage._itemCount,
        ),
      ),
    );
  }

  void addCard() {
    setState(() {
      MyHomePage._itemCount++;
      showToast(
        "Yeni kart eklendi!",
        backgroundColor: Colors.green,
        context: context,
        duration: const Duration(seconds: 2),
        animation: StyledToastAnimation.fade,
        reverseAnimation: StyledToastAnimation.fade,
        borderRadius: BorderRadius.circular(35),
      );
    });
  }

  void resetCards() {
    setState(() {
      if (MyHomePage._itemCount > 0) {
        MyHomePage._itemCount--;
      } else {
        showToast(
          "Silinecek kart bulunamadı!",
          context: context,
          backgroundColor: Colors.red,
          axis: Axis.horizontal,
          duration: const Duration(seconds: 3),
          curve: Curves.decelerate,
          animation: StyledToastAnimation.slideToBottom,
          reverseAnimation: StyledToastAnimation.fade,
          borderRadius: BorderRadius.circular(35),
        );
      }
    });
  }
}
