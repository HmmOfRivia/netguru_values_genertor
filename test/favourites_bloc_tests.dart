import 'package:bloc_test/bloc_test.dart';
import 'package:netguru_values_genertor/blocs/favourites_bloc/favourites_bloc.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';
import 'package:netguru_values_genertor/infrastructure/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockQuotesRepository extends Mock implements QuotesRepository {}

void main() {
  MockQuotesRepository mockQuotesRepository;
  setUp(() {
    mockQuotesRepository = MockQuotesRepository();
  });

  group('FavouritesBloc', () {
    Quote testQuote = Quote(id: 10, value: "Qwerty", isFavourite: true);

    test("Repository not provided, throw assertion", () {
      expect(() => FavouritesBloc(null), throwsA(isAssertionError));
    });

    test('Initial state correct', () {
      expect(FavouritesBloc(mockQuotesRepository).state,
          FavouritesState.initial());
    });

    blocTest(
      "Emit showFavourites with quote from repository as argument when loadFavourites triggered",
      build: () async {
        when(mockQuotesRepository.getFavouritesList())
            .thenAnswer((_) async => [testQuote]);
        return FavouritesBloc(mockQuotesRepository);
      },
      act: (bloc) => bloc.add(FavouritesEvent.loadFavourites()),
      expect: [
        FavouritesState.showFavourites([testQuote])
      ],
    );

    blocTest("Emit nothingToDisplay state when method returns emptyList",
        build: () async {
          when(mockQuotesRepository.getFavouritesList())
              .thenAnswer((_) async => List());

          return FavouritesBloc(mockQuotesRepository);
        },
        act: (bloc) =>
            bloc.add(FavouritesEvent.loadFavourites()),
        expect: [FavouritesState.nothingToShow()]);
  });
}
