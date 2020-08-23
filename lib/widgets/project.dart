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
      child: Column(
        children: [
          Expanded(
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(
                project.image,
              ),
              fit: BoxFit.fitWidth,
              fadeInDuration: const Duration(milliseconds: 350),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AutoSizeText(
                    project.name,
                    textScaleFactor: 1.5,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    project.description,
                    textScaleFactor: 1.1,
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                  ),
                  Divider(),
                  Wrap(
                    children: <Widget>[
                      if (project.websiteLink.isNotEmpty)
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.globe),
                          tooltip: 'Website',
                          iconSize: 20.0,
                          onPressed: () => launch(project.websiteLink),
                        ),
                      if (project.repositoryLink.isNotEmpty)
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.code),
                          tooltip: 'Repository',
                          iconSize: 20.0,
                          onPressed: () => launch(project.repositoryLink),
                        ),
                      if (project.playStoreLink.isNotEmpty)
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.googlePlay),
                          tooltip: 'Google Play',
                          iconSize: 20.0,
                          onPressed: () => launch(project.playStoreLink),
                        ),
                      if (project.appStoreLink.isNotEmpty)
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.apple),
                          tooltip: 'Apple Store',
                          iconSize: 20.0,
                          onPressed: () => launch(project.appStoreLink),
                        ),
                      if (project.additionalLinks.isNotEmpty)
                        ...project.additionalLinks
                            .map(
                              (link) => IconButton(
                                icon: const FaIcon(FontAwesomeIcons.link),
                                tooltip: link.title,
                                iconSize: 20.0,
                                onPressed: () => launch(link.url),
                              ),
                            )
                            .toList()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
