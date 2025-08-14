class ItemModel {
  final String image, title, subTitle;
  final double rate;
  bool isFavorite;

  ItemModel({
    required this.image,
    required this.title,
    required this.subTitle,
    this.rate = 0,
    this.isFavorite = false,
  });
}
