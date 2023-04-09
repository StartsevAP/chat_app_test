import 'package:chat_app_test/domain/tag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class TagImpl implements Tag {
  @override
  final int color;

  @override
  final String name;

  const TagImpl(this.color, this.name);

  factory TagImpl.fromJson(Map<String, dynamic> json) => _$TagImplFromJson(json);

  Map<String, dynamic> toJson() => _$TagImplToJson(this);
}

class TagConverter implements JsonConverter<Tag, Map<String, dynamic>> {
  const TagConverter();

  @override
  Tag fromJson(Map<String, dynamic> json) {
    return TagImpl.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Tag object) {
    return (Tag as TagImpl).toJson();
  }
}
