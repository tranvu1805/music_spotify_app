import 'package:dartz/dartz.dart';
import 'package:music_spotify/data/models/auth/create_user_req.dart';
import 'package:music_spotify/data/models/auth/sign_in_user_req.dart';

abstract class AuthRepository {
  Future<Either> signUp(CreateUserReq createUserReq);

  Future<Either> signIn(SignInUserReq signInUserReq);

  Future<Either> getUser();
}
