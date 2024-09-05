class Book {
  final int id;
  final String name;
  final String author;
  final int publishedYear;

  Book(
      {required this.id,
      required this.name,
      required this.author,
      required this.publishedYear});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      name: json['name'],
      author: json['author'],
      publishedYear: json['published_year'],
    );
  }
}
