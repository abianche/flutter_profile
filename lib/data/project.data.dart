import 'package:flutter_profile/data/assets.dart';
import 'package:flutter_profile/models/project.model.dart';

final List<ProjectModel> projects = [
  ProjectModel(
    name: 'AutoscuolaSilveri.it',
    description:
        'Website for driving school AutoScuola Silveri A. & .C SNC built with Hugo',
    image: Assets.autoscuolaSilveriImage,
    websiteLink: 'https://www.autoscuolasilveri.it/',
  ),
  ProjectModel(
    name: 'Planning Poker Online',
    description: 'Free Android and iOS application built with Flutter.',
    image: Assets.planningPokerImage,
    playStoreLink:
        'https://play.google.com/store/apps/details?id=com.abianche.planningpoker',
    appStoreLink:
        'https://apps.apple.com/us/app/planning-poker-scrum/id1466098334?mt=8',
  ),
  ProjectModel(
    name: 'Pomodoro Time',
    description: 'Free Android and iOS application built with Flutter (demo)',
    image: Assets.pomodoroTimeImage,
    repositoryLink: 'https://github.com/abianche/pomodoro_time',
  ),
  ProjectModel(
    name: 'My portfolio',
    description:
        "Website for my portfolio built with Flutter. You're browsing it right now!",
    image: Assets.portfolioImage,
    websiteLink: 'https://abianche.github.io/',
    repositoryLink: 'https://github.com/abianche/flutter_profile',
  ),
];
