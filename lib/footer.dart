import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_profile/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 180,
            ),
            InkWell(
              hoverColor: Colors.transparent,
              child: Tooltip(
                message: "PayPal - The safer, easier way to pay online!",
                child: Container(
                  child: Text(
                    "Donate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Palette.sunglow,
                  ),
                  padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                ),
              ),
              onTap: () => launch(
                  "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=LCVGA76B4AH5U&currency_code=EUR&source=url"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Made with ",
                  style: TextStyle(
                    fontFamily: GoogleFonts.merriweather().fontFamily,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.solidHeart,
                  size: 16.0,
                  color: Palette.sunburntCyclops,
                ),
                Text(
                  " in Flutter",
                  style: TextStyle(
                    fontFamily: GoogleFonts.merriweather().fontFamily,
                  ),
                ),
              ],
            ),
            Text(
              "All rights reserved",
              style: TextStyle(
                fontFamily: GoogleFonts.merriweather().fontFamily,
              ),
            ),
            Text("© ${DateTime.now().year}"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
