import 'package:flutter_profile/data/assets.dart';
import 'package:flutter_profile/models/project.model.dart';

final List<Project> projects = [
  Project(
    name: "AutoscuolaSilveri.it",
    description: "Website for driving school AutoScuola Silveri A. & .C SNC built with Hugo",
    image: Assets.autoscuolaSilveriImage,
    links: [
      "https://www.autoscuolasilveri.it/",
    ],
  ),
  Project(
    name: "Planning Poker Online",
    description: "Free Android and iOS application built with Flutter.",
    image: Assets.planningPokerImage,
    links: [
      "https://play.google.com/store/apps/details?id=com.abianche.planningpoker",
      "https://apps.apple.com/us/app/planning-poker-scrum/id1466098334?mt=8",
    ],
  ),
  Project(
    name: "Pomodoro Time",
    description: "Free Android and iOS application built with Flutter (currently not released)",
    image: Assets.pomodoroTimeImage,
    source: "https://github.com/abianche/pomodoro_time",
  ),
  Project(
    name: "My portfolio",
    description: "Website for my portfolio built with Flutter. You're browsing it right now!",
    image: Assets.portfolioImage,
  ),
];
