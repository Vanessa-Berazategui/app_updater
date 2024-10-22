// Project imports:
import 'package:app_updater/app/app.dart';
import 'package:app_updater/bootstrap.dart';

void main() {
  bootstrap(() => const App(), env: AppEnvironment.prod);
}
