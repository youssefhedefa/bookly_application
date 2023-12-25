import 'package:book/Features/home/data/repo/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_request.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
        ApiRequest(
          Dio(),
        ),
        'design'
    ),
  );
}