import 'dart:convert' as json;
import 'package:built_value/built_value.dart';

part 'quote.g.dart';

abstract class Quote implements Built<Quote, QuoteBuilder> {
  String get icon_url;
  String get id;
  String get url;
  String get value;

  Quote._();
  factory Quote([updates(QuoteBuilder b)]) = _$Quote;
}

Quote parseQuote(String jsonString){
  return null;
//  final parsed = json.jsonDecode(jsonString);
//  Quote quote = Quote.fromJson(parsed);
//  return quote;
}