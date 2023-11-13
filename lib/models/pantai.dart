class Pantai {
  final String name;
  final String facility;
  final String location;
  final String description;
  final String imageAsset;
  final List<String> imageUrls;
  bool isFavorite;

  Pantai({
    required this.name,
    required this.facility,
    required this.location,
    required this.description,
    required this.imageAsset,
    required this.imageUrls,
    this.isFavorite = false,
  });

}

