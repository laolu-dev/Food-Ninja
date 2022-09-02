// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Review {
  String reviewerName;
  String date;
  String description;
  String rating;

  Review({
    required this.reviewerName,
    required this.date,
    required this.description,
    required this.rating,
  });

  Review copyWith({
    String? reviewerName,
    String? date,
    String? description,
    String? rating,
  }) {
    return Review(
      reviewerName: reviewerName ?? this.reviewerName,
      date: date ?? this.date,
      description: description ?? this.description,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reviewerName': reviewerName,
      'date': date,
      'description': description,
      'rating': rating,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      reviewerName: map['reviewerName'] as String,
      date: map['date'] as String,
      description: map['description'] as String,
      rating: map['rating'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Review(reviewerName: $reviewerName, date: $date, description: $description, rating: $rating)';
  }

  @override
  bool operator ==(covariant Review other) {
    if (identical(this, other)) return true;
  
    return 
      other.reviewerName == reviewerName &&
      other.date == date &&
      other.description == description &&
      other.rating == rating;
  }

  @override
  int get hashCode {
    return reviewerName.hashCode ^
      date.hashCode ^
      description.hashCode ^
      rating.hashCode;
  }
}
