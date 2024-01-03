class ArticleModel {
  final String title;
  final String? image;
  final String? subTitle;
  final String url;

  ArticleModel({
    required this.url,
    required this.title,
    required this.image,
    required this.subTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        url: json['url'],
        title: json['title'],
        image: json['urlToImage'],
        subTitle: json['description']);
  }
}
