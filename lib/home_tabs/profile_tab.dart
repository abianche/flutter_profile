import 'package:flutter/material.dart';
import 'package:flutter_profile/data/assets.dart';
import 'package:flutter_profile/data/constants.dart';
import 'package:flutter_profile/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: const NetworkImage(
                  Assets.profilePicture,
                ),
                width: 300,
                fadeInDuration: const Duration(milliseconds: 350),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              Constants.fullName,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            Constants.jobTitle,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 24,
              children: <Widget>[
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.solidEnvelope),
                  iconSize: 36,
                  onPressed: () => launch(Constants.mailtoLink),
                  tooltip: 'Send an e-mail',
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  iconSize: 36,
                  onPressed: () => launch(Constants.githubProfile),
                  tooltip: 'GitHub',
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.telegram),
                  iconSize: 36,
                  onPressed: () => launch(Constants.telegramProfile),
                  tooltip: 'Telegram',
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  iconSize: 36,
                  onPressed: () => launch(Constants.linkedInProfile),
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook),
                  iconSize: 36,
                  onPressed: () => launch(Constants.facebookProfile),
                  tooltip: 'Facebook',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
