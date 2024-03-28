class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'By car @ right Price',
    image: 'assets/images/img_pngtreecarsel.png',
    discription:
        "Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
  ),
  UnbordingContent(
    title: 'Compare Cars',
    image: 'assets/images/img_istockphoto113.png',
    discription:
        "Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
  ),
  UnbordingContent(
    title: 'Get the best price on car',
    image: 'assets/images/img_pricetag51684364323754.png',
    discription:
        "Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
  ),
];
