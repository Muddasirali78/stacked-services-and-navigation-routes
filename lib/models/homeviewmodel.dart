import 'package:stacked/stacked.dart';
import 'package:stc/app/app.locator.dart';
import 'package:stc/services/counter_services.dart';

class homeviewmodel extends BaseViewModel {
  final counterService = locator <CounterService>();
}
