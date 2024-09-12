part of 'injection.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  await initUtility();
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
