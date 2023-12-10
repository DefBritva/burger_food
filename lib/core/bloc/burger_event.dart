part of 'burger_bloc.dart';

@immutable
sealed class BurgerEvent {}

final class RegisterUser extends BurgerEvent {
  final String email;
  final String password;

  RegisterUser({required this.email, required this.password});
}
