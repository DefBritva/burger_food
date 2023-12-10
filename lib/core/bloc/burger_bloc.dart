import 'package:bloc/bloc.dart';
import 'package:burger_food/core/domain/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'burger_event.dart';
part 'burger_state.dart';

class BurgerBloc extends Bloc<BurgerEvent, BurgerState> {
  final AuthService _authService;
  BurgerBloc(this._authService) : super(BurgerInitial()) {
    on<RegisterUser>((event, emit) {});
  }
}
