import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_demo/core/injection.dart';

void main() {
  configureDependencies(environment: Env.test);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(getIt<IIntRepository>().value.toString()),
        ),
      ),
    );
  }
}

@factoryMethod
abstract class IIntRepository {
  int get value;
}

@Injectable(as: IIntRepository)
@Environment(Env.dev)
class DevIntRepository implements IIntRepository {
  @override
  int get value => 0;
}

@Injectable(as: IIntRepository)
@Environment(Env.prod)
class ProdIntRepository implements IIntRepository {
  @override
  int get value => 1;
}

@Injectable(as: IIntRepository)
@Environment(Env.test)
class TestIntRepository implements IIntRepository {
  @override
  int get value => 2;
}
