//
//
// final getIt = GetIt.instance;
//
// void initGetIt() {
//   getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
//   getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
//   getIt.registerLazySingleton<WebServices>(
//           () => WebServices(createAndSetupDio()));
// }
//
// Dio createAndSetupDio() {
//   Dio dio = Dio();
//
//   dio
//     ..options.connectTimeout = 200 * 1000
//     ..options.receiveTimeout = 200 * 1000;
//
//   dio.interceptors.add(LogInterceptor(
//     responseBody: true,
//     error: true,
//     requestHeader: false,
//     responseHeader: false,
//     request: true,
//     requestBody: true,
//   ));
//
//   return dio;
// }