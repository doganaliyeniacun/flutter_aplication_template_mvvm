import 'package:flutter_application_template_mvvm/core/base/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_model.g.dart';

@JsonSerializable()
class TestModel extends BaseModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  TestModel({this.userId, this.id, this.title, this.body});

  @override
  fromJson(Map<String, dynamic> json) {
    return _$TestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TestModelToJson(this);
  }
}
