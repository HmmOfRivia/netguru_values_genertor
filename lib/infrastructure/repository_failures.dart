import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_failures.freezed.dart';

@freezed
abstract class RepositoryFailure with _$RepositoryFailure{
  const factory RepositoryFailure.createQuoteError() = CreateQuoteError;
  const factory RepositoryFailure.getRandomQuoteError() = GetRandomQuoteError;
  const factory RepositoryFailure.getFavouritesListError() = GetFavouritesListError;
  const factory RepositoryFailure.getAllQuotesError() = GetAllQuotesError;
  const factory RepositoryFailure.deleteQuoteError() = DeleteQuoteError;
  const factory RepositoryFailure.updateQuoteError() = UpdateQuoteError;
}