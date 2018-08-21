// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$Quote extends Quote {
  @override
  final String icon_url;
  @override
  final String id;
  @override
  final String url;
  @override
  final String value;

  factory _$Quote([void updates(QuoteBuilder b)]) =>
      (new QuoteBuilder()..update(updates)).build();

  _$Quote._({this.icon_url, this.id, this.url, this.value}) : super._() {
    if (icon_url == null)
      throw new BuiltValueNullFieldError('Quote', 'icon_url');
    if (id == null) throw new BuiltValueNullFieldError('Quote', 'id');
    if (url == null) throw new BuiltValueNullFieldError('Quote', 'url');
    if (value == null) throw new BuiltValueNullFieldError('Quote', 'value');
  }

  @override
  Quote rebuild(void updates(QuoteBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  QuoteBuilder toBuilder() => new QuoteBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Quote) return false;
    return icon_url == other.icon_url &&
        id == other.id &&
        url == other.url &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, icon_url.hashCode), id.hashCode), url.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Quote')
          ..add('icon_url', icon_url)
          ..add('id', id)
          ..add('url', url)
          ..add('value', value))
        .toString();
  }
}

class QuoteBuilder implements Builder<Quote, QuoteBuilder> {
  _$Quote _$v;

  String _icon_url;
  String get icon_url => _$this._icon_url;
  set icon_url(String icon_url) => _$this._icon_url = icon_url;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  QuoteBuilder();

  QuoteBuilder get _$this {
    if (_$v != null) {
      _icon_url = _$v.icon_url;
      _id = _$v.id;
      _url = _$v.url;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quote other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Quote;
  }

  @override
  void update(void updates(QuoteBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Quote build() {
    final _$result = _$v ??
        new _$Quote._(icon_url: icon_url, id: id, url: url, value: value);
    replace(_$result);
    return _$result;
  }
}
