import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:u4pa1/presentation/blocs/characters/character_bloc.dart';

import 'data/datasources/character_remote_datasource.dart';
import 'data/repositories/character_repository_impl.dart';
import 'domain/repositories/character_repository.dart';
import 'domain/usecases/get_all_characters_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => CharacterBloc(sl()));
  sl.registerLazySingleton(() => GetAllCharacters(sl()));
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(sl()),);
  sl.registerLazySingleton<CharacterRemoteDataSource>(() => CharacterRemoteDataSourceImpl(sl()),);
  sl.registerLazySingleton(() => http.Client());
}
