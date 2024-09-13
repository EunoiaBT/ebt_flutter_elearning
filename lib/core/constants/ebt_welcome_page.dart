import 'package:ebt_flutter_elearning/core/constants/ebt_image.dart';

class EbtWelcomeContent {
  final String image;
  final String titleLeft;
  final String titleCenter;
  final String? titleRight;
  final String subTitle;

  EbtWelcomeContent({
    required this.image,
    required this.titleLeft,
    required this.titleCenter,
    this.titleRight,
    required this.subTitle,
  });
}

List<EbtWelcomeContent> welcomePages = [
  EbtWelcomeContent(
    image: EbtImage.learning,
    titleLeft: 'Discover Your ',
    titleCenter: 'Learning Adventure',
    titleRight: '',
    subTitle:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  EbtWelcomeContent(
    image: EbtImage.bookmark,
    titleLeft: 'Stay Organized With ',
    titleCenter: 'Bookmarks',
    titleRight: '',
    subTitle:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  EbtWelcomeContent(
    image: EbtImage.certification,
    titleLeft: 'Achieve ',
    titleCenter: 'Certifications ',
    titleRight: 'with Ease',
    subTitle:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
];
