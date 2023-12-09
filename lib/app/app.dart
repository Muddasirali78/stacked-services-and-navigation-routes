
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stc/services/counter_services.dart';
import 'package:stc/view/counter_view.dart';
import 'package:stc/view/home_view.dart';

@StackedApp(routes: [

  MaterialRoute(page: counterview,
  initial: true
  ),
  
  MaterialRoute(page: homeview,
  
  ),
  
],

dependencies: [

Singleton(classType: NavigationService),
LazySingleton(classType: CounterService),
]
)

class App{

}