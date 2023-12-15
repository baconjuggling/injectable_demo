import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_demo/core/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
void configureDependencies({required String environment}) =>
    $initGetIt(getIt, environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static const test = 'test';
}
