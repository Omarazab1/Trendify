import 'package:get_it/get_it.dart';
import 'package:trendify/core/service/firebase_auth_service.dart';
import 'package:trendify/features/auth/data/repos/auth_repo_impl.dart';
import 'package:trendify/features/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {

  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService(),);
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>()));

}


















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