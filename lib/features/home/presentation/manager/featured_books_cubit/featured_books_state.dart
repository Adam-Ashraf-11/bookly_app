part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {

  final List <BookModel> book ;

 const FeaturedBooksSuccess(this.book);

  
}

final class FeaturedBooksfailure extends FeaturedBooksState {

  final String errorMessage ;

  const FeaturedBooksfailure(this.errorMessage);
}
