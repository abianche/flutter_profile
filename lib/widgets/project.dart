import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/models/project.model.dart';
import 'package:flutter_profile/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  final ProjectModel project;

  const Project({
    Key key,
    @required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(
                  project.image,
                ),
                height: 200.0,
                fit: BoxFit.contain,
                fadeInDuration: const Duration(milliseconds: 350),
              ),
            ),
          ),
          AutoSizeText(
            project.name,
            textScaleFactor: 2.5,
            maxLines: 1,
          ),
          AutoSizeText(
            project.description,
            textScaleFactor: 1.1,
            maxLines: 2,
          ),
          Wrap(
            children: <Widget>[
              if (project.websiteLink.isNotEmpty)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.globe),
                  tooltip: 'Website',
                  onPressed: () => launch(project.websiteLink),
                ),
              if (project.repositoryLink.isNotEmpty)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.code),
                  tooltip: 'Repository',
                  onPressed: () => launch(project.repositoryLink),
                ),
              if (project.playStoreLink.isNotEmpty)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.googlePlay),
                  tooltip: 'Google Play',
                  onPressed: () => launch(project.playStoreLink),
                ),
              if (project.appStoreLink.isNotEmpty)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.apple),
                  tooltip: 'Apple Store',
                  onPressed: () => launch(project.appStoreLink),
                ),
              if (project.additionalLinks.isNotEmpty)
                ...project.additionalLinks
                    .map(
                      (link) => IconButton(
                        icon: const FaIcon(FontAwesomeIcons.link),
                        tooltip: 'Link',
                        onPressed: () => launch(link),
                      ),
                    )
                    .toList()
            ],
          )
        ],
      ),
    );
  }
}
