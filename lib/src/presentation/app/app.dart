import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:you_can/src/presentation/register_page_mobile/register_page_mobile.dart';
import 'package:you_can/src/presentation/you_can/view/authorization_page_mobili.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: RegisterPageMobile(),
        home: AuthorizationPageMobili(),
        // home: Scaffold(
        //   backgroundColor: Colors.black,
        // ),
      ),
    );
  }
}
