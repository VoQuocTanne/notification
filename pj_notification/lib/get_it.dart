import 'package:get_it/get_it.dart';
import 'package:notification_test/service/notification_service.dart';

import 'bloc/notification_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<NotificationService>(() => NotificationService());
  getIt.registerFactory(() => NotificationBloc(getIt<NotificationService>()));
}