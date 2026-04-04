import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bookly_app/features/home/data/models/book_model/book_model.dart' show BookModel;
import 'package:flutter_bookly_app/features/home/data/repos/home_repo.dart' show HomeRepo;

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());


   final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errormessage!));
      },
      (book) {
        emit(NewestBooksSuccess(book));
      },
    );
  }
}
