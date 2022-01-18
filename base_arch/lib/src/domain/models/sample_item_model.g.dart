// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_item_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleItemModel extends SampleItemModel {
  @override
  final int id;

  factory _$SampleItemModel([void Function(SampleItemModelBuilder)? updates]) =>
      (new SampleItemModelBuilder()..update(updates)).build();

  _$SampleItemModel._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'SampleItemModel', 'id');
  }

  @override
  SampleItemModel rebuild(void Function(SampleItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleItemModelBuilder toBuilder() =>
      new SampleItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleItemModel && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SampleItemModel')..add('id', id))
        .toString();
  }
}

class SampleItemModelBuilder
    implements Builder<SampleItemModel, SampleItemModelBuilder> {
  _$SampleItemModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  SampleItemModelBuilder();

  SampleItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SampleItemModel;
  }

  @override
  void update(void Function(SampleItemModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SampleItemModel build() {
    final _$result = _$v ??
        new _$SampleItemModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'SampleItemModel', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
