import 'package:flutter/foundation.dart';

class GenericLink {
  final String url;
  final String title;

  GenericLink({
    this.url = '',
    this.title = '',
  });
}

class ProjectModel {
  final String image;
  final String name;
  final String description;
  final String repositoryLink;
  final String playStoreLink;
  final String appStoreLink;
  final String websiteLink;
  final List<GenericLink> additionalLinks;

  ProjectModel({
    this.image,
    this.name,
    this.description,
    this.repositoryLink = '',
    this.playStoreLink = '',
    this.appStoreLink = '',
    this.websiteLink = '',
    this.additionalLinks = const [],
  });

  ProjectModel copyWith({
    String image,
    String name,
    String description,
    String repositoryLink,
    String playStoreLink,
    String appStoreLink,
    String websiteLink,
    List<GenericLink> additionalLinks,
  }) {
    return ProjectModel(
      image: image ?? this.image,
      name: name ?? this.name,
      description: description ?? this.description,
      repositoryLink: repositoryLink ?? this.repositoryLink,
      playStoreLink: playStoreLink ?? this.playStoreLink,
      appStoreLink: appStoreLink ?? this.appStoreLink,
      websiteLink: websiteLink ?? this.websiteLink,
      additionalLinks: additionalLinks ?? this.additionalLinks,
    );
  }

  @override
  String toString() {
    return 'ProjectModel(image: $image, name: $name, description: $description, repositoryLink: $repositoryLink, playStoreLink: $playStoreLink, appStoreLink: $appStoreLink, websiteLink: $websiteLink, additionalLinks: $additionalLinks)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ProjectModel &&
        o.image == image &&
        o.name == name &&
        o.description == description &&
        o.repositoryLink == repositoryLink &&
        o.playStoreLink == playStoreLink &&
        o.appStoreLink == appStoreLink &&
        o.websiteLink == websiteLink &&
        listEquals(o.additionalLinks, additionalLinks);
  }

  @override
  int get hashCode {
    return image.hashCode ^
        name.hashCode ^
        description.hashCode ^
        repositoryLink.hashCode ^
        playStoreLink.hashCode ^
        appStoreLink.hashCode ^
        websiteLink.hashCode ^
        additionalLinks.hashCode;
  }
}
