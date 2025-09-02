import 'package:epicboymoses/core/bindings/appbindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/const/app_colors.dart';
import 'route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configEasyLoading();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

void configEasyLoading() {
  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = AppColors.grayColor
    ..textColor = Colors.white
    ..indicatorColor = Colors.white
    ..maskColor = Colors.green
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  @override
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: Color(0xffF5F4F9),
          fontFamily: 'Poppins',
        ),
        debugShowCheckedModeBanner: false,
        title: 'Epic Boy Moses',
        getPages: AppRoute.routes,
        initialRoute: AppRoute.splashScreen,
        builder: EasyLoading.init(),
        initialBinding: AppBindings(),
      ),
    );
  }
}
