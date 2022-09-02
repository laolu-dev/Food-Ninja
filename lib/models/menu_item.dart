// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MenuItem {
  String name;
  int price;

  MenuItem({
    required this.name,
    required this.price,
  });

  MenuItem copyWith({
    String? name,
    int? price,
  }) {
    return MenuItem(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
    };
  }

  factory MenuItem.fromMap(Map<String, dynamic> map) {
    return MenuItem(
      name: map['name'] as String,
      price: map['price'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuItem.fromJson(String source) => MenuItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MenuItem(name: $name, price: $price)';

  @override
  bool operator ==(covariant MenuItem other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.price == price;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode;
}
