import 'package:flutter/material.dart';

class AppColors {
  AppColors({
    /// Transparent Color Scheme
    this.transparent = const Color.fromRGBO(255, 255, 255, 0),

    // White Color Scheme
    this.white = const Color.fromRGBO(255, 255, 255, 1),

    // Slate Color Scheme
    this.slate50 = const Color.fromRGBO(248, 250, 252, 1),
    this.slate100 = const Color.fromRGBO(241, 245, 249, 1),
    this.slate200 = const Color.fromRGBO(226, 232, 240, 1),
    this.slate300 = const Color.fromRGBO(203, 213, 225, 1),
    this.slate400 = const Color.fromRGBO(148, 163, 184, 1),
    this.slate500 = const Color.fromRGBO(100, 116, 139, 1),
    this.slate600 = const Color.fromRGBO(71, 85, 105, 1),
    this.slate700 = const Color.fromRGBO(51, 65, 85, 1),
    this.slate800 = const Color.fromRGBO(30, 41, 59, 1),
    this.slate900 = const Color.fromRGBO(15, 23, 42, 1),

    // Gray Color Scheme
    this.gray50 = const Color.fromRGBO(249, 250, 251, 1),
    this.gray100 = const Color.fromRGBO(243, 244, 246, 1),
    this.gray200 = const Color.fromRGBO(229, 231, 235, 1),
    this.gray300 = const Color.fromRGBO(209, 213, 219, 1),
    this.gray400 = const Color.fromRGBO(156, 163, 175, 1),
    this.gray500 = const Color.fromRGBO(107, 114, 128, 1),
    this.gray600 = const Color.fromRGBO(75, 85, 99, 1),
    this.gray700 = const Color.fromRGBO(55, 65, 81, 1),
    this.gray800 = const Color.fromRGBO(31, 41, 55, 1),
    this.gray900 = const Color.fromRGBO(17, 24, 39, 1),

    // Zinc Color Scheme
    this.zinc50 = const Color.fromRGBO(250, 250, 250, 1),
    this.zinc100 = const Color.fromRGBO(244, 244, 245, 1),
    this.zinc200 = const Color.fromRGBO(228, 228, 231, 1),
    this.zinc300 = const Color.fromRGBO(212, 212, 216, 1),
    this.zinc400 = const Color.fromRGBO(161, 161, 170, 1),
    this.zinc500 = const Color.fromRGBO(113, 113, 122, 1),
    this.zinc600 = const Color.fromRGBO(82, 82, 91, 1),
    this.zinc700 = const Color.fromRGBO(63, 63, 70, 1),
    this.zinc800 = const Color.fromRGBO(39, 39, 42, 1),
    this.zinc900 = const Color.fromRGBO(24, 24, 27, 1),

    // Neutral Color Scheme
    this.neutral50 = const Color.fromRGBO(250, 250, 250, 1),
    this.neutral100 = const Color.fromRGBO(245, 245, 245, 1),
    this.neutral200 = const Color.fromRGBO(229, 229, 229, 1),
    this.neutral300 = const Color.fromRGBO(212, 212, 212, 1),
    this.neutral400 = const Color.fromRGBO(163, 163, 163, 1),
    this.neutral500 = const Color.fromRGBO(115, 115, 115, 1),
    this.neutral600 = const Color.fromRGBO(82, 82, 82, 1),
    this.neutral700 = const Color.fromRGBO(64, 64, 64, 1),
    this.neutral800 = const Color.fromRGBO(38, 38, 38, 1),
    this.neutral900 = const Color.fromRGBO(23, 23, 23, 1),

    // Stone Color Scheme
    this.stone50 = const Color.fromRGBO(250, 250, 249, 1),
    this.stone100 = const Color.fromRGBO(245, 245, 244, 1),
    this.stone200 = const Color.fromRGBO(231, 229, 228, 1),
    this.stone300 = const Color.fromRGBO(214, 211, 209, 1),
    this.stone400 = const Color.fromRGBO(168, 162, 158, 1),
    this.stone500 = const Color.fromRGBO(120, 113, 108, 1),
    this.stone600 = const Color.fromRGBO(87, 83, 78, 1),
    this.stone700 = const Color.fromRGBO(68, 64, 60, 1),
    this.stone800 = const Color.fromRGBO(41, 37, 36, 1),
    this.stone900 = const Color.fromRGBO(28, 25, 23, 1),

    // Red Color Scheme
    this.red50 = const Color.fromRGBO(254, 242, 242, 1),
    this.red100 = const Color.fromRGBO(254, 226, 226, 1),
    this.red200 = const Color.fromRGBO(254, 202, 202, 1),
    this.red300 = const Color.fromRGBO(252, 165, 165, 1),
    this.red400 = const Color.fromRGBO(248, 113, 113, 1),
    this.red500 = const Color.fromRGBO(239, 68, 68, 1),
    this.red600 = const Color.fromRGBO(220, 38, 38, 1),
    this.red700 = const Color.fromRGBO(185, 28, 28, 1),
    this.red800 = const Color.fromRGBO(153, 27, 27, 1),
    this.red900 = const Color.fromRGBO(127, 29, 29, 1),

    // Orange Color Scheme
    this.orange50 = const Color.fromRGBO(255, 247, 237, 1),
    this.orange100 = const Color.fromRGBO(255, 237, 213, 1),
    this.orange200 = const Color.fromRGBO(254, 215, 170, 1),
    this.orange300 = const Color.fromRGBO(253, 186, 116, 1),
    this.orange400 = const Color.fromRGBO(251, 146, 60, 1),
    this.orange500 = const Color.fromRGBO(249, 115, 22, 1),
    this.orange600 = const Color.fromRGBO(234, 88, 12, 1),
    this.orange700 = const Color.fromRGBO(194, 65, 12, 1),
    this.orange800 = const Color.fromRGBO(154, 52, 18, 1),
    this.orange900 = const Color.fromRGBO(124, 45, 18, 1),

    // Amber Color Scheme
    this.amber50 = const Color.fromRGBO(255, 251, 235, 1),
    this.amber100 = const Color.fromRGBO(254, 243, 199, 1),
    this.amber200 = const Color.fromRGBO(253, 230, 138, 1),
    this.amber300 = const Color.fromRGBO(252, 211, 77, 1),
    this.amber400 = const Color.fromRGBO(251, 191, 36, 1),
    this.amber500 = const Color.fromRGBO(245, 158, 11, 1),
    this.amber600 = const Color.fromRGBO(217, 119, 6, 1),
    this.amber700 = const Color.fromRGBO(180, 83, 9, 1),
    this.amber800 = const Color.fromRGBO(146, 64, 14, 1),
    this.amber900 = const Color.fromRGBO(120, 53, 15, 1),

    // Yellow Color Scheme
    this.yellow50 = const Color.fromRGBO(254, 252, 232, 1),
    this.yellow100 = const Color.fromRGBO(254, 249, 195, 1),
    this.yellow200 = const Color.fromRGBO(254, 240, 138, 1),
    this.yellow300 = const Color.fromRGBO(253, 224, 71, 1),
    this.yellow400 = const Color.fromRGBO(250, 204, 21, 1),
    this.yellow500 = const Color.fromRGBO(234, 179, 8, 1),
    this.yellow600 = const Color.fromRGBO(202, 138, 4, 1),
    this.yellow700 = const Color.fromRGBO(161, 98, 7, 1),
    this.yellow800 = const Color.fromRGBO(133, 77, 14, 1),
    this.yellow900 = const Color.fromRGBO(113, 63, 18, 1),

    // Lime Color Scheme
    this.lime50 = const Color.fromRGBO(247, 254, 231, 1),
    this.lime100 = const Color.fromRGBO(236, 252, 203, 1),
    this.lime200 = const Color.fromRGBO(217, 249, 157, 1),
    this.lime300 = const Color.fromRGBO(190, 242, 100, 1),
    this.lime400 = const Color.fromRGBO(163, 230, 53, 1),
    this.lime500 = const Color.fromRGBO(132, 204, 22, 1),
    this.lime600 = const Color.fromRGBO(101, 163, 13, 1),
    this.lime700 = const Color.fromRGBO(77, 124, 15, 1),
    this.lime800 = const Color.fromRGBO(63, 98, 18, 1),
    this.lime900 = const Color.fromRGBO(54, 83, 20, 1),

    // Green Color Scheme
    this.green50 = const Color.fromRGBO(240, 253, 244, 1),
    this.green100 = const Color.fromRGBO(220, 252, 231, 1),
    this.green200 = const Color.fromRGBO(187, 247, 208, 1),
    this.green300 = const Color.fromRGBO(134, 239, 172, 1),
    this.green400 = const Color.fromRGBO(74, 222, 128, 1),
    this.green500 = const Color.fromRGBO(34, 197, 94, 1),
    this.green600 = const Color.fromRGBO(22, 163, 74, 1),
    this.green700 = const Color.fromRGBO(21, 128, 61, 1),
    this.green800 = const Color.fromRGBO(22, 101, 52, 1),
    this.green900 = const Color.fromRGBO(20, 83, 45, 1),

    // Emerald Color Scheme
    this.emerald50 = const Color.fromRGBO(236, 253, 245, 1),
    this.emerald100 = const Color.fromRGBO(209, 250, 229, 1),
    this.emerald200 = const Color.fromRGBO(167, 243, 208, 1),
    this.emerald300 = const Color.fromRGBO(110, 231, 183, 1),
    this.emerald400 = const Color.fromRGBO(52, 211, 153, 1),
    this.emerald500 = const Color.fromRGBO(16, 185, 129, 1),
    this.emerald600 = const Color.fromRGBO(5, 150, 105, 1),
    this.emerald700 = const Color.fromRGBO(4, 120, 87, 1),
    this.emerald800 = const Color.fromRGBO(6, 95, 70, 1),
    this.emerald900 = const Color.fromRGBO(6, 78, 59, 1),

    // Teal Color Scheme
    this.teal50 = const Color.fromRGBO(240, 253, 250, 1),
    this.teal100 = const Color.fromRGBO(204, 251, 241, 1),
    this.teal200 = const Color.fromRGBO(153, 246, 228, 1),
    this.teal300 = const Color.fromRGBO(94, 234, 212, 1),
    this.teal400 = const Color.fromRGBO(45, 212, 191, 1),
    this.teal500 = const Color.fromRGBO(20, 184, 166, 1),
    this.teal600 = const Color.fromRGBO(13, 148, 136, 1),
    this.teal700 = const Color.fromRGBO(15, 118, 110, 1),
    this.teal800 = const Color.fromRGBO(17, 94, 89, 1),
    this.teal900 = const Color.fromRGBO(19, 78, 74, 1),

    // Cyan Color Scheme
    this.cyan50 = const Color.fromRGBO(236, 254, 255, 1),
    this.cyan100 = const Color.fromRGBO(207, 250, 254, 1),
    this.cyan200 = const Color.fromRGBO(165, 243, 252, 1),
    this.cyan300 = const Color.fromRGBO(103, 232, 249, 1),
    this.cyan400 = const Color.fromRGBO(34, 211, 238, 1),
    this.cyan500 = const Color.fromRGBO(6, 182, 212, 1),
    this.cyan600 = const Color.fromRGBO(8, 145, 178, 1),
    this.cyan700 = const Color.fromRGBO(14, 116, 144, 1),
    this.cyan800 = const Color.fromRGBO(21, 94, 117, 1),
    this.cyan900 = const Color.fromRGBO(22, 78, 99, 1),

    // Sky Color Scheme
    this.sky50 = const Color.fromRGBO(240, 249, 255, 1),
    this.sky100 = const Color.fromRGBO(224, 242, 254, 1),
    this.sky200 = const Color.fromRGBO(186, 230, 253, 1),
    this.sky300 = const Color.fromRGBO(125, 211, 252, 1),
    this.sky400 = const Color.fromRGBO(56, 189, 248, 1),
    this.sky500 = const Color.fromRGBO(14, 165, 233, 1),
    this.sky600 = const Color.fromRGBO(2, 132, 199, 1),
    this.sky700 = const Color.fromRGBO(3, 105, 161, 1),
    this.sky800 = const Color.fromRGBO(7, 89, 133, 1),
    this.sky900 = const Color.fromRGBO(12, 74, 110, 1),

    // Blue Color Scheme
    this.blue50 = const Color.fromRGBO(239, 246, 255, 1),
    this.blue100 = const Color.fromRGBO(219, 234, 254, 1),
    this.blue200 = const Color.fromRGBO(191, 219, 254, 1),
    this.blue300 = const Color.fromRGBO(147, 197, 253, 1),
    this.blue400 = const Color.fromRGBO(96, 165, 250, 1),
    this.blue500 = const Color.fromRGBO(59, 130, 246, 1),
    this.blue600 = const Color.fromRGBO(37, 99, 235, 1),
    this.blue700 = const Color.fromRGBO(29, 78, 216, 1),
    this.blue800 = const Color.fromRGBO(30, 64, 175, 1),
    this.blue900 = const Color.fromRGBO(30, 58, 138, 1),

    // Indigo Color Scheme
    this.indigo50 = const Color.fromRGBO(238, 242, 255, 1),
    this.indigo100 = const Color.fromRGBO(224, 231, 255, 1),
    this.indigo200 = const Color.fromRGBO(199, 210, 254, 1),
    this.indigo300 = const Color.fromRGBO(165, 180, 252, 1),
    this.indigo400 = const Color.fromRGBO(129, 140, 248, 1),
    this.indigo500 = const Color.fromRGBO(99, 102, 241, 1),
    this.indigo600 = const Color.fromRGBO(79, 70, 229, 1),
    this.indigo700 = const Color.fromRGBO(67, 56, 202, 1),
    this.indigo800 = const Color.fromRGBO(55, 48, 163, 1),
    this.indigo900 = const Color.fromRGBO(49, 46, 129, 1),

    // Violet Color Scheme
    this.violet50 = const Color.fromRGBO(245, 243, 255, 1),
    this.violet100 = const Color.fromRGBO(237, 233, 254, 1),
    this.violet200 = const Color.fromRGBO(221, 214, 254, 1),
    this.violet300 = const Color.fromRGBO(196, 181, 253, 1),
    this.violet400 = const Color.fromRGBO(167, 139, 250, 1),
    this.violet500 = const Color.fromRGBO(139, 92, 246, 1),
    this.violet600 = const Color.fromRGBO(124, 58, 237, 1),
    this.violet700 = const Color.fromRGBO(109, 40, 217, 1),
    this.violet800 = const Color.fromRGBO(91, 33, 182, 1),
    this.violet900 = const Color.fromRGBO(76, 29, 149, 1),

    // Purple Color Scheme
    this.purple50 = const Color.fromRGBO(250, 245, 255, 1),
    this.purple100 = const Color.fromRGBO(243, 232, 255, 1),
    this.purple200 = const Color.fromRGBO(233, 213, 255, 1),
    this.purple300 = const Color.fromRGBO(216, 180, 254, 1),
    this.purple400 = const Color.fromRGBO(192, 132, 252, 1),
    this.purple500 = const Color.fromRGBO(168, 85, 247, 1),
    this.purple600 = const Color.fromRGBO(147, 51, 234, 1),
    this.purple700 = const Color.fromRGBO(126, 34, 206, 1),
    this.purple800 = const Color.fromRGBO(107, 33, 168, 1),
    this.purple900 = const Color.fromRGBO(88, 28, 135, 1),

    // Fuchsia Color Scheme
    this.fuchsia50 = const Color.fromRGBO(253, 244, 255, 1),
    this.fuchsia100 = const Color.fromRGBO(250, 232, 255, 1),
    this.fuchsia200 = const Color.fromRGBO(245, 208, 254, 1),
    this.fuchsia300 = const Color.fromRGBO(240, 171, 252, 1),
    this.fuchsia400 = const Color.fromRGBO(232, 121, 249, 1),
    this.fuchsia500 = const Color.fromRGBO(217, 70, 239, 1),
    this.fuchsia600 = const Color.fromRGBO(192, 38, 211, 1),
    this.fuchsia700 = const Color.fromRGBO(162, 28, 175, 1),
    this.fuchsia800 = const Color.fromRGBO(134, 25, 143, 1),
    this.fuchsia900 = const Color.fromRGBO(112, 26, 117, 1),

    // Pink Color Scheme
    this.pink50 = const Color.fromRGBO(253, 242, 248, 1),
    this.pink100 = const Color.fromRGBO(252, 231, 243, 1),
    this.pink200 = const Color.fromRGBO(251, 207, 232, 1),
    this.pink300 = const Color.fromRGBO(249, 168, 212, 1),
    this.pink400 = const Color.fromRGBO(244, 114, 182, 1),
    this.pink500 = const Color.fromRGBO(236, 72, 153, 1),
    this.pink600 = const Color.fromRGBO(219, 39, 119, 1),
    this.pink700 = const Color.fromRGBO(190, 24, 93, 1),
    this.pink800 = const Color.fromRGBO(157, 23, 77, 1),
    this.pink900 = const Color.fromRGBO(131, 24, 67, 1),

    // Rose Color Scheme
    this.rose50 = const Color.fromRGBO(255, 241, 242, 1),
    this.rose100 = const Color.fromRGBO(255, 228, 230, 1),
    this.rose200 = const Color.fromRGBO(254, 205, 211, 1),
    this.rose300 = const Color.fromRGBO(253, 164, 175, 1),
    this.rose400 = const Color.fromRGBO(251, 113, 133, 1),
    this.rose500 = const Color.fromRGBO(244, 63, 94, 1),
    this.rose600 = const Color.fromRGBO(225, 29, 72, 1),
    this.rose700 = const Color.fromRGBO(190, 18, 60, 1),
    this.rose800 = const Color.fromRGBO(159, 18, 57, 1),
    this.rose900 = const Color.fromRGBO(136, 19, 55, 1),
  });

  /// Transparent Color Scheme
  final Color transparent;

  // White Color Scheme
  final Color white;

  // Slate Color Scheme
  final Color slate50;
  final Color slate100;
  final Color slate200;
  final Color slate300;
  final Color slate400;
  final Color slate500;
  final Color slate600;
  final Color slate700;
  final Color slate800;
  final Color slate900;

  // Gray Color Scheme
  final Color gray50;
  final Color gray100;
  final Color gray200;
  final Color gray300;
  final Color gray400;
  final Color gray500;
  final Color gray600;
  final Color gray700;
  final Color gray800;
  final Color gray900;

  // Zinc Color Scheme
  final Color zinc50;
  final Color zinc100;
  final Color zinc200;
  final Color zinc300;
  final Color zinc400;
  final Color zinc500;
  final Color zinc600;
  final Color zinc700;
  final Color zinc800;
  final Color zinc900;

  // Neutral Color Scheme
  final Color neutral50;
  final Color neutral100;
  final Color neutral200;
  final Color neutral300;
  final Color neutral400;
  final Color neutral500;
  final Color neutral600;
  final Color neutral700;
  final Color neutral800;
  final Color neutral900;

  // Stone Color Scheme
  final Color stone50;
  final Color stone100;
  final Color stone200;
  final Color stone300;
  final Color stone400;
  final Color stone500;
  final Color stone600;
  final Color stone700;
  final Color stone800;
  final Color stone900;

  // Red Color Scheme
  final Color red50;
  final Color red100;
  final Color red200;
  final Color red300;
  final Color red400;
  final Color red500;
  final Color red600;
  final Color red700;
  final Color red800;
  final Color red900;

  // Orange Color Scheme
  final Color orange50;
  final Color orange100;
  final Color orange200;
  final Color orange300;
  final Color orange400;
  final Color orange500;
  final Color orange600;
  final Color orange700;
  final Color orange800;
  final Color orange900;

  // Amber Color Scheme
  final Color amber50;
  final Color amber100;
  final Color amber200;
  final Color amber300;
  final Color amber400;
  final Color amber500;
  final Color amber600;
  final Color amber700;
  final Color amber800;
  final Color amber900;

  // Yellow Color Scheme
  final Color yellow50;
  final Color yellow100;
  final Color yellow200;
  final Color yellow300;
  final Color yellow400;
  final Color yellow500;
  final Color yellow600;
  final Color yellow700;
  final Color yellow800;
  final Color yellow900;

  // Lime Color Scheme
  final Color lime50;
  final Color lime100;
  final Color lime200;
  final Color lime300;
  final Color lime400;
  final Color lime500;
  final Color lime600;
  final Color lime700;
  final Color lime800;
  final Color lime900;

  // Green Color Scheme
  final Color green50;
  final Color green100;
  final Color green200;
  final Color green300;
  final Color green400;
  final Color green500;
  final Color green600;
  final Color green700;
  final Color green800;
  final Color green900;

  // Emerald Color Scheme
  final Color emerald50;
  final Color emerald100;
  final Color emerald200;
  final Color emerald300;
  final Color emerald400;
  final Color emerald500;
  final Color emerald600;
  final Color emerald700;
  final Color emerald800;
  final Color emerald900;

  // Teal Color Scheme
  final Color teal50;
  final Color teal100;
  final Color teal200;
  final Color teal300;
  final Color teal400;
  final Color teal500;
  final Color teal600;
  final Color teal700;
  final Color teal800;
  final Color teal900;

  // Cyan Color Scheme
  final Color cyan50;
  final Color cyan100;
  final Color cyan200;
  final Color cyan300;
  final Color cyan400;
  final Color cyan500;
  final Color cyan600;
  final Color cyan700;
  final Color cyan800;
  final Color cyan900;

  // Sky Color Scheme
  final Color sky50;
  final Color sky100;
  final Color sky200;
  final Color sky300;
  final Color sky400;
  final Color sky500;
  final Color sky600;
  final Color sky700;
  final Color sky800;
  final Color sky900;

  // Blue Color Scheme
  final Color blue50;
  final Color blue100;
  final Color blue200;
  final Color blue300;
  final Color blue400;
  final Color blue500;
  final Color blue600;
  final Color blue700;
  final Color blue800;
  final Color blue900;

  // Indigo Color Scheme
  final Color indigo50;
  final Color indigo100;
  final Color indigo200;
  final Color indigo300;
  final Color indigo400;
  final Color indigo500;
  final Color indigo600;
  final Color indigo700;
  final Color indigo800;
  final Color indigo900;

  // Violet Color Scheme
  final Color violet50;
  final Color violet100;
  final Color violet200;
  final Color violet300;
  final Color violet400;
  final Color violet500;
  final Color violet600;
  final Color violet700;
  final Color violet800;
  final Color violet900;

  // Purple Color Scheme
  final Color purple50;
  final Color purple100;
  final Color purple200;
  final Color purple300;
  final Color purple400;
  final Color purple500;
  final Color purple600;
  final Color purple700;
  final Color purple800;
  final Color purple900;

  // Fuchsia Color Scheme
  final Color fuchsia50;
  final Color fuchsia100;
  final Color fuchsia200;
  final Color fuchsia300;
  final Color fuchsia400;
  final Color fuchsia500;
  final Color fuchsia600;
  final Color fuchsia700;
  final Color fuchsia800;
  final Color fuchsia900;

  // Pink Color Scheme
  final Color pink50;
  final Color pink100;
  final Color pink200;
  final Color pink300;
  final Color pink400;
  final Color pink500;
  final Color pink600;
  final Color pink700;
  final Color pink800;
  final Color pink900;

  // Rose Color Scheme
  final Color rose50;
  final Color rose100;
  final Color rose200;
  final Color rose300;
  final Color rose400;
  final Color rose500;
  final Color rose600;
  final Color rose700;
  final Color rose800;
  final Color rose900;
}
