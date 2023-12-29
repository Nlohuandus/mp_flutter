class IdentificationTypes {
  String? id;
  String? name;
  String? type;
  int? minLength;
  int? maxLength;

  IdentificationTypes(
      {this.id, this.name, this.type, this.maxLength, this.minLength});

  factory IdentificationTypes.fromJson(Map<String, dynamic> json) =>
      IdentificationTypes(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        type: json["type"] ?? "",
        minLength: json["min_length"] ?? "",
        maxLength: json["max_length"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        'min_length': minLength,
        "max_length": maxLength
      };
}
