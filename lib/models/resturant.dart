// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:todo/models/menu_item.dart';
import 'package:todo/models/review.dart';

class Resturant {
  String name;
  int distance;
  String description;
  int? rating;
  List<MenuItem> items;
  List<Review>? resturantReviews;

  Resturant({
    required this.name,
    required this.distance,
    required this.description,
    this.rating,
    required this.items,
    this.resturantReviews,
  });

  Resturant copyWith({
    String? name,
    int? distance,
    String? description,
    int? rating,
    List<MenuItem>? items,
    List<Review>? resturantReviews,
  }) {
    return Resturant(
      name: name ?? this.name,
      distance: distance ?? this.distance,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      items: items ?? this.items,
      resturantReviews: resturantReviews ?? this.resturantReviews,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'distance': distance,
      'description': description,
      'rating': rating,
      'items': items.map((x) => x.toMap()).toList(),
      'resturantReviews': resturantReviews?.map((x) => x.toMap()).toList(),
    };
  }

  factory Resturant.fromMap(Map<String, dynamic> map) {
    return Resturant(
      name: map['name'] as String,
      distance: map['distance'] as int,
      description: map['description'] as String,
      rating: map['rating'] != null ? map['rating'] as int : null,
      items: List<MenuItem>.from((map['items'] as List<int>).map<MenuItem>((x) => MenuItem.fromMap(x as Map<String,dynamic>),),),
      resturantReviews: map['resturantReviews'] != null ? List<Review>.from((map['resturantReviews'] as List<int>).map<Review?>((x) => Review.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Resturant.fromJson(String source) => Resturant.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Resturant(name: $name, distance: $distance, description: $description, rating: $rating, items: $items, resturantReviews: $resturantReviews)';
  }

  @override
  bool operator ==(covariant Resturant other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.distance == distance &&
      other.description == description &&
      other.rating == rating &&
      listEquals(other.items, items) &&
      listEquals(other.resturantReviews, resturantReviews);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      distance.hashCode ^
      description.hashCode ^
      rating.hashCode ^
      items.hashCode ^
      resturantReviews.hashCode;
  }
}
