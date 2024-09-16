part of 'injection.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  await initUtility();
  await initAppStore();
  await initWelcome();
}

Future<void> initAppStore() async {
  sl
    ..registerLazySingleton(
      () => CacheStore(
        pref: sl(),
      ),
    )
    ..registerLazySingleton(
      () => UserStore(
        pref: sl(),
      ),
    );
}

Future<void> initUtility() async {
  final SharedPreferences _pref = await SharedPreferences.getInstance();
  sl
    ..registerLazySingleton<Dio>(
      () => Dio(),
    )
    ..registerLazySingleton(
      () => _pref,
    )
    ..registerLazySingleton(
      () => CachedNetworkImage(
        imageUrl: sl(),
      ),
    );
}

Future<void> initWelcome() async {
  sl
    ..registerFactory(
      () => WelcomeCubit(
        cacheFirstTimer: sl(),
        checkIfUserIsFirstTimer: sl(),
      ),
    )
    ..registerLazySingleton(
      () => CacheFirstTimer(
        sl(),
      ),
    )
    ..registerLazySingleton(
      () => CheckIfUserIsFirstTimer(
        sl(),
      ),
    )
    ..registerLazySingleton<WelcomeRepository>(
      () => WelcomeRepositoryImpl(
        localDataSource: sl(),
      ),
    )
    ..registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(),
    );
}
