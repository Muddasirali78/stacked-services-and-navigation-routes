import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stc/app/app.locator.dart';
import 'package:stc/app/app.router.dart';
import 'package:stc/services/counter_services.dart';

class counterviewmodel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService =locator<CounterService>();
  addvalue() {
    counterService.addcounterValue();
    rebuildUi();
  }

  navigatetoHome() {
    navigationService.navigateToHomeview();

    rebuildUi();
  }
}
