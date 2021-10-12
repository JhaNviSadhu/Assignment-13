class ImageModel {
  final String img;

  ImageModel({required this.img});
}

List images = [
  {
    "img": "assets/post0.jpg",
  },
  {
    "img": "assets/post1.jpg",
  },
  {
    "img": "assets/post2.jpg",
  },
  {
    "img": "assets/post3.jpg",
  },
  {
    "img": "assets/post4.jpg",
  },
  {
    "img": "assets/post5.jpg",
  },
  {
    "img": "assets/post6.jpg",
  },
];

List<ImageModel> getImages() {
  return images
      .map(
        (item) => ImageModel(
          img: item["img"],
        ),
      )
      .toList();
}
