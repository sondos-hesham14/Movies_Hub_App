import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  void login(String email, String password) {
    emit(AuthLoading());
    if (email.isEmpty) {
      emit(AuthError('Please enter your email'));
      return;
    }
    if (!email.contains('@') || !email.endsWith('.com')) {
      emit(AuthError('Please enter a valid email'));
      return;
    }
    if (password.isEmpty) {
      emit(AuthError('Please enter your password'));
      return;
    }
    if (password.length > 20) {
      emit(AuthError('Password must not exceed 20 characters'));
      return;
    }
    emit(AuthSuccess());
  }
  
}