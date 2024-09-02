import 'package:get_it/get_it.dart';

import 'data/repository/auth/auth_repository_implementation.dart';
import 'data/repository/song/song_repository_impl.dart';
import 'data/source/auth/auth_firebase_service.dart';
import 'data/source/song/song_firebase_service.dart';
import 'domain/repository/auth/auth.dart';
import 'domain/repository/song/song.dart';
import 'domain/usecases/auth/get_user.dart';
import 'domain/usecases/auth/sign_in.dart';
import 'domain/usecases/auth/sign_up.dart';
import 'domain/usecases/song/add_or_remove_favorite_songs.dart';
import 'domain/usecases/song/get_favorite_songs.dart';
import 'domain/usecases/song/get_new_songs.dart';
import 'domain/usecases/song/get_play_list.dart';
import 'domain/usecases/song/is_favorite_song.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImplementation());

  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());

  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());

  sl.registerSingleton<SignInUseCase>(SignInUseCase());

  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());

  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());

  sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
      AddOrRemoveFavoriteSongUseCase());

  sl.registerSingleton<IsFavoriteSongUseCase>(IsFavoriteSongUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());

  sl.registerSingleton<GetFavoriteSongsUseCase>(GetFavoriteSongsUseCase());
}
