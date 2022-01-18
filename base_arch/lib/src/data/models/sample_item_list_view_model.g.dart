// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_item_list_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleItemListViewModel extends SampleItemListViewModel {
  @override
  final BuiltList<int> list;

  factory _$SampleItemListViewModel(
          [void Function(SampleItemListViewModelBuilder)? updates]) =>
      (new SampleItemListViewModelBuilder()..update(updates)).build();

  _$SampleItemListViewModel._({required this.list}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        list, 'SampleItemListViewModel', 'list');
  }

  @override
  SampleItemListViewModel rebuild(
          void Function(SampleItemListViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleItemListViewModelBuilder toBuilder() =>
      new SampleItemListViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleItemListViewModel && list == other.list;
  }

  @override
  int get hashCode {
    return $jf($jc(0, list.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SampleItemListViewModel')
          ..add('list', list))
        .toString();
  }
}

class SampleItemListViewModelBuilder
    implements
        Builder<SampleItemListViewModel, SampleItemListViewModelBuilder> {
  _$SampleItemListViewModel? _$v;

  ListBuilder<int>? _list;
  ListBuilder<int> get list => _$this._list ??= new ListBuilder<int>();
  set list(ListBuilder<int>? list) => _$this._list = list;

  SampleItemListViewModelBuilder();

  SampleItemListViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleItemListViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SampleItemListViewModel;
  }

  @override
  void update(void Function(SampleItemListViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SampleItemListViewModel build() {
    _$SampleItemListViewModel _$result;
    try {
      _$result = _$v ?? new _$SampleItemListViewModel._(list: list.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SampleItemListViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
