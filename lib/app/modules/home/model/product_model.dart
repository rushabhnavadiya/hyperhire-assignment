class ProductModel{
  String title;
  String subtitle;
  String image;
  List<String> details;
  int rank;
  double rating;
  int noOfRate;
  List<String> tags;


  ProductModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.details,
    required this.rank,
    required this.rating,
    required this.noOfRate,
    required this.tags,
  });
}