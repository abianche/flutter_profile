import 'package:flutter/material.dart';
import 'package:flutter_profile/data/project.data.dart';
import 'package:flutter_profile/widgets/project.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: GridView.count(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: getValueForScreenType<int>(
            context: context,
            mobile: 1,
            tablet: 2,
            desktop: 3,
          ),
          semanticChildCount: projects.length,
          children: projects
              .map((project) => Project(
                    project: project,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
