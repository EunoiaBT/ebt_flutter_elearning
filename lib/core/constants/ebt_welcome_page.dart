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
        'Embark on a journey where knowledge meets excitement, transforming your learning experience into a thrilling adventure.',
  ),
  EbtWelcomeContent(
    image: EbtImage.bookmark,
    titleLeft: 'Stay Organized With ',
    titleCenter: 'Bookmarks',
    titleRight: '',
    subTitle:
        'Keep track of your progress effortlessly and return to your favorite lessons with a simple tap, ensuring you never miss a beat.',
  ),
  EbtWelcomeContent(
    image: EbtImage.certification,
    titleLeft: 'Achieve ',
    titleCenter: 'Certifications ',
    titleRight: 'with Ease',
    subTitle:
        'Master your skills and earn certifications with confidence, supported by a streamlined and efficient learning path.',
  ),
];
