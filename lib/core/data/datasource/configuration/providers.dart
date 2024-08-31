
import 'package:dio/dio.dart';

import '../../../../src/features/auth/data/datasource/remote/auth_remote_data_source.dart';
import '../../../../src/features/auth/domain/repositories/auth_repository.dart';
import '../../../domain/services/api_service.dart';
import '../../../domain/services/api_services_imp.dart';

class BlocProviderSingleton {
  static final BlocProviderSingleton _instance = BlocProviderSingleton._internal();
  static BlocProviderSingleton get instance => _instance;

  factory BlocProviderSingleton() {
    return _instance;
  }

  BlocProviderSingleton._internal();

}


final Dio dio=  Dio();
final ApiServices apiServices=ApiServicesImp(dio);
final AuthRepository authRepository=  AuthRepository(AuthRemoteDataSource(apiServices));
