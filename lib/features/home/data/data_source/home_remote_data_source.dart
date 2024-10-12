import '../../domain/entities/home_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List <HomeEntity>> fetchHomeData();
}

 class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<HomeEntity>> fetchHomeData() {

    throw UnimplementedError();
  }
}