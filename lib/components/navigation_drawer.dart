import 'package:deneme2/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.65,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );

  Widget buildMenuItems(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double height = size.height;
    double width = size.width;
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/me.png"),
          ),
          title: Text(
            "Utku_Mese",
            style: GoogleFonts.actor(
              textStyle: const TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          trailing: const Icon(Icons.more_horiz_sharp),
          onTap: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          color: Colors.black,
        ),
        const SizedBox(
          height: 15,
        ),
        ListTile(
          leading: Icon(
            Icons.podcasts_sharp,
            size: 30,
            color: Colors.purple[300],
          ),
          title: Text(
            "Network",
            style: GoogleFonts.actor(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          onTap: () {
            showToast(
              "with you soon",
              context: context,
              backgroundColor: Colors.purple,
              axis: Axis.horizontal,
              position: StyledToastPosition.bottom,
              duration: const Duration(seconds: 4),
              curve: Curves.decelerate,
              animation: StyledToastAnimation.fade,
              reverseAnimation: StyledToastAnimation.fade,
              borderRadius: BorderRadius.circular(35),
            );
          },
        ),
        const SizedBox(
          height: 7,
        ),
        ListTile(
          leading: Icon(
            Icons.collections_bookmark_rounded,
            size: 30,
            color: Colors.purple[300],
          ),
          title: Text(
            "Saved",
            style: GoogleFonts.actor(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          onTap: () {
            showToast(
              "with you soon",
              context: context,
              backgroundColor: Colors.purple,
              axis: Axis.horizontal,
              position: StyledToastPosition.bottom,
              duration: const Duration(seconds: 4),
              curve: Curves.decelerate,
              animation: StyledToastAnimation.fade,
              reverseAnimation: StyledToastAnimation.fade,
              borderRadius: BorderRadius.circular(35),
            );
          },
        ),
        const SizedBox(
          height: 7,
        ),
        ListTile(
          leading: Icon(
            Icons.add_moderator_rounded,
            size: 30,
            color: Colors.purple[300],
          ),
          title: Text(
            "Securty",
            style: GoogleFonts.actor(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          onTap: () {
            showToast(
              "with you soon",
              context: context,
              backgroundColor: Colors.purple,
              axis: Axis.horizontal,
              position: StyledToastPosition.bottom,
              duration: const Duration(seconds: 4),
              curve: Curves.decelerate,
              animation: StyledToastAnimation.fade,
              reverseAnimation: StyledToastAnimation.fade,
              borderRadius: BorderRadius.circular(35),
            );
          },
        ),
        const SizedBox(
          height: 7,
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 30,
            color: Colors.purple[300],
          ),
          title: Text(
            "Settings",
            style: GoogleFonts.actor(
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          onTap: () {
            showToast(
              "with you soon",
              context: context,
              backgroundColor: Colors.purple,
              axis: Axis.horizontal,
              position: StyledToastPosition.bottom,
              duration: const Duration(seconds: 4),
              curve: Curves.decelerate,
              animation: StyledToastAnimation.fade,
              reverseAnimation: StyledToastAnimation.fade,
              borderRadius: BorderRadius.circular(35),
            );
          },
        ),
        SizedBox(
          height: height - height * (57 / 100),
        ),

        //*------------- Live Cards status------------------
        ListTile(
          leading: const Icon(
            Icons.radio_button_checked_outlined,
            color: Colors.green,
          ),
          title: Text("Live cards: ${MyHomePage.itemCount}"),
        ),
        //*-------------------------------------------------
      ],
    );
  }
}
