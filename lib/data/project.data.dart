import 'package:flutter_profile/data/assets.dart';
import 'package:flutter_profile/models/project.model.dart';

final List<ProjectModel> projects = [
  ProjectModel(
    name: 'Untitled service for reservations',
    description: 'A platform and service to make reservations online.',
    image: Assets.undrawIdeation,
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
    description: 'Free Android and iOS application built with Flutter (demo).',
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
  ProjectModel(
    name: 'AutoscuolaSilveri.it',
    description:
        'Website for driving school AutoScuola Silveri A. & .C SNC built with Hugo.',
    image: Assets.autoscuolaSilveriImage,
    websiteLink: 'https://www.autoscuolasilveri.it/',
  ),
  ProjectModel(
    name: 'HLD-like Demo',
    description:
        'A Hyper Light Drifter-like demo built with Game Maker Studio 2 and GML.',
    image: Assets.hldDemoImage,
    repositoryLink: 'https://github.com/abianche/GM-HLD-demo',
  ),
  ProjectModel(
    name: 'Unity 2D platform shooter Demo',
    description: 'A 2D platform shooter demo built with Unity Engine and C#.',
    image: Assets.unityDemoImage,
    repositoryLink: 'https://github.com/abianche/2dplatformerdemo',
  ),
  ProjectModel(
    name: 'Warzone',
    description: 'An agent-based simulation, built with Crown Engine and C++.',
    image: Assets.warzoneImage,
    repositoryLink: 'https://github.com/abianche/warzone-dcc',
    additionalLinks: [
      GenericLink(
        url: 'https://github.com/dbartolini/crown',
        title: 'Crown Engine',
      ),
    ],
  ),
];
