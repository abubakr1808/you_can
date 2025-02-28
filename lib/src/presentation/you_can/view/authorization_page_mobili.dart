import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_can/src/presentation/you_can/view/leding_page.dart';
import 'package:you_can/src/presentation/you_can/view/register_page_mobile.dart';

class AuthorizationPageMobili extends StatefulWidget {
  const AuthorizationPageMobili({super.key});

  @override
  State<AuthorizationPageMobili> createState() =>
      _AuthorizationPageMobiliState();
}

class _AuthorizationPageMobiliState extends State<AuthorizationPageMobili> {
  Future<void> getInt() async {
    final sheret = await SharedPreferences.getInstance();
    setState(
      () {
        Nomercontroller!.text = sheret.getString("Nomercontroller") ?? "";
        Parolcontroller!.text = sheret.getString("Parolcontroller") ?? "";
      },
    );
  }

  Future<void> saqlashvositasi() async {
    final shader = await SharedPreferences.getInstance();
    shader.setString("Nomercontroller", Nomercontroller!.text);
    shader.setString("Parolcontroller", Parolcontroller!.text);
  }

  // ignore: non_constant_identifier_names

  @override
  void initState() {
    getInt();
    super.initState();
  }

  @override
  void dispose() {
    Nomercontroller?.dispose();
    Parolcontroller?.dispose();
    super.dispose();
  }

  bool _passwordVisible = false;
  // ignore: non_constant_identifier_names
  TextEditingController? Nomercontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController? Parolcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0D3D8D),
        title: Container(
          height: 5.h,
          decoration: BoxDecoration(
            color: Color(0xff0D3D8D),
            borderRadius: BorderRadius.circular(19.sp),
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                color: Color(0xff000000),
                blurRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.sp,
              vertical: 12.sp,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/logo.png"),
                Spacer(),
                Text(
                  "Рус",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset("assets/images/language.png"),
                ),
                Text(
                  "Кыр",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/verification.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 15.h),
              Text(
                "Вход",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.sp,
                ),
                child: TextField(
                  controller: Nomercontroller,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                  scrollPadding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Номер телефона",
                    hintStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.sp,
                ),
                child: TextField(
                  controller: Parolcontroller,
                  obscureText: !_passwordVisible,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                  scrollPadding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Пароль",
                    hintStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15.sp,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible =
                              !_passwordVisible; // Holatni o‘zgartiramiz
                        });
                      },
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                "Забыли пароль?",
                style: TextStyle(
                  color: Color(0xff6E86AD),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 6.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LedingPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff5b7cb2),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'ВОЙТИ',
                        style: TextStyle(
                          color: Color(0xff0D3D8D),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Выполняя вход в аккаунт Youcan, вы \n          соглашаетесь с нашимии\n   Политикой конфиденциальности.",
                style: TextStyle(
                  color: Color(0xff6E86AD),
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 5.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPageMobile(),
                    ),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 15.5.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
