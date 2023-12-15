// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:injectable_demo/main.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.IIntRepository>(
    () => _i3.DevIntRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i3.IIntRepository>(
    () => _i3.ProdIntRepository(),
    registerFor: {_prod},
  );
  gh.factory<_i3.IIntRepository>(
    () => _i3.TestIntRepository(),
    registerFor: {_test},
  );
  return getIt;
}
