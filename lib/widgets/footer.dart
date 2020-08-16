import 'package:flutter/material.dart';
import 'package:flutter_profile/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width -
          getValueForScreenType<double>(
            context: context,
            mobile: 72.0,
            tablet: 72.0,
            desktop: 132.0,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Made with '),
          const Icon(
            FontAwesomeIcons.solidHeart,
            size: 16.0,
            color: Palette.sunburntCyclops,
          ),
          const Text(' in Flutter'),
          const Text(' | '),
          const Text('All rights reserved'),
          Text('© ${DateTime.now().year}'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              tooltip: 'PayPal - The safer, easier way to pay online!',
              icon: const FaIcon(FontAwesomeIcons.paypal),
              onPressed: () => launch(
                  'https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=LCVGA76B4AH5U&currency_code=EUR&source=url'),
            ),
          ),
        ],
      ),
    );
  }
}
