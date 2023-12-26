import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/app_export.dart';
import 'core/storage/repositories/hive_repository.dart';

void main() async {
  await dotenv.load();
  await Hive.initFlutter();
  await Get.putAsync<HiveRepository>(() async {
    final hive = HiveRepository();
    await hive.init();
    return hive;
  }, permanent: true);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Locale?>(
      future: PrefUtils.getLanguage(),
      builder: (context, snapshot) {
        Locale? locale = snapshot.data;
        if (snapshot.connectionState == ConnectionState.done &&
            locale != null) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              visualDensity: VisualDensity.standard,
            ),
            translations: AppLocalization(),
            locale: locale,
            fallbackLocale: Locale('en', 'US'),
            title: 'shoes_app',
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
