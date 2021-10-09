
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moki/routes/app_pages.dart';
import 'package:moki/routes/app_routes.dart';

import 'config/pallete.dart';
import 'features/root/root_binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    // Fixing App Orientation.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
        statusBarColor: mPrimaryColor,
        systemNavigationBarColor: mPrimaryColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: mPrimaryColor,
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(dark);


    return ScreenUtilInit(
      designSize: const Size(427,970),
      builder: ()=> GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          //primarySwatch: mPrimaryColor,
        ),
        initialRoute: AppRoutes.root,
        getPages: AppPages.list,
        initialBinding: RootBinding(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
