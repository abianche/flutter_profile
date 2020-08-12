import 'package:flutter/foundation.dart';

class Project {
  final String image;
  final String name;
  final String description;
  final List<String> links;
  final String source;

  Project({
    this.image,
    this.name,
    this.description,
    this.links,
    this.source,
  });

  Project copyWith({
    String image,
    String name,
    String description,
    List<String> links,
    String source,
  }) {
    return Project(
      image: image ?? this.image,
      name: name ?? this.name,
      description: description ?? this.description,
      links: links ?? this.links,
      source: source ?? this.source,
    );
  }

  @override
  String toString() {
    return 'Project(image: $image, name: $name, description: $description, links: $links, source: $source)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Project &&
        o.image == image &&
        o.name == name &&
        o.description == description &&
        listEquals(o.links, links) &&
        o.source == source;
  }

  @override
  int get hashCode {
    return image.hashCode ^ name.hashCode ^ description.hashCode ^ links.hashCode ^ source.hashCode;
  }
}
