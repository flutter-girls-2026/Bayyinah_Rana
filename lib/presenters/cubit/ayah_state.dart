part of 'ayah_cubit.dart';

@immutable
sealed class AyahState {}

final class AyahInitial extends AyahState {}

final class AyahLoading extends AyahState {}

final class AyahLoaded extends AyahState {
  final List<AyahModel> ayahat;
  AyahLoaded({required this.ayahat});

}

final class ErrorState extends AyahState {
  final String errorMessage;

  ErrorState(this.errorMessage);
}
