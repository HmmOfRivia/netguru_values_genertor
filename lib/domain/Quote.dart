import 'package:freezed_annotation/freezed_annotation.dart';
part 'Quote.freezed.dart';
@freezed
abstract class Quote with _$Quote{

  Quote._();

  const factory Quote({
    int id,
    @required String value,
    @required bool isFavourite,
  }) = _Quote;

  factory Quote.empty() => Quote(
    id: 0,
    value: '',
    isFavourite: false
  );

  factory Quote.fromDatabase(Map<String, dynamic> data) => Quote(
      id: data['id'],
      value: data['value'],
      isFavourite: data['is_favourite'] == 0 ? false : true);

}