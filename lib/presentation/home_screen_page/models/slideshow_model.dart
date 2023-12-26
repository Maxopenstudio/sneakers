class Banner {
  final String title;
  final String link;
  final String image;

  Banner({
    required this.title,
    required this.link,
    required this.image,
  });

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      title: json['title'] ?? '',
      link: json['link'] ?? '',
      image: json['image'] ?? '',
    );
  }
}

class SlideShow {
  final int moduleId;
  final String name;
  final int bannerId;
  final String width;
  final String height;
  final String status;
  final List<Banner> banners;

  SlideShow({
    required this.moduleId,
    required this.name,
    required this.bannerId,
    required this.width,
    required this.height,
    required this.status,
    required this.banners,
  });

  factory SlideShow.fromJson(Map<String, dynamic> json) {
    var bannerList = json['banners'] as List<dynamic>;
    List<Banner> banners =
    bannerList.map((bannerJson) => Banner.fromJson(bannerJson)).toList();

    return SlideShow(
      moduleId: json['module_id'] ?? 0,
      name: json['name'] ?? '',
      bannerId: json['banner_id'] ?? 0,
      width: json['width'] ?? '',
      height: json['height'] ?? '',
      status: json['status'] ?? '',
      banners: banners,
    );
  }
}
