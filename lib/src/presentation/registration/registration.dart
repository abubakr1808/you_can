import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_can/src/presentation/registration/reg_finish.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Future<void> getInt() async {
    final sheret = await SharedPreferences.getInstance();
    setState(
      () {
        Fiocontroller!.text = sheret.getString("Fiocontroller") ?? "";
        Nomercontroller!.text = sheret.getString("Nomercontroller") ?? "";
        Parolcontroller!.text = sheret.getString("Parolcontroller") ?? "";
        Rayoncontroller!.text = sheret.getString("Rayoncontroller") ?? "";
        Bozrastcontroller!.text = sheret.getString("Bozrastcontroller") ?? "";
      },
    );
  }

  Future<void> saqlashvositasi() async {
    final shader = await SharedPreferences.getInstance();
    shader.setString("Fiocontroller", Fiocontroller!.text);
    shader.setString("Nomercontroller", Nomercontroller!.text);
    shader.setString("Parolcontroller", Parolcontroller!.text);
    shader.setString("Rayoncontroller", Rayoncontroller!.text);
    shader.setString("Bozrastcontroller", Bozrastcontroller!.text);
  }

  // ignore: non_constant_identifier_names

  @override
  void initState() {
    getInt();
    super.initState();
  }

  @override
  void dispose() {
    Fiocontroller?.dispose();
    Nomercontroller?.dispose();
    Parolcontroller?.dispose();
    Rayoncontroller?.dispose();
    Bozrastcontroller?.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  TextEditingController? Fiocontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController? Nomercontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController? Parolcontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController? Rayoncontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController? Bozrastcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff0D3D8D),
        title: Container(
          height: 5.h,
          decoration: BoxDecoration(
            color: const Color(0xff0D3D8D),
            borderRadius: BorderRadius.circular(19.sp),
            boxShadow: const [
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
              vertical: 15.sp,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/logo.png"),
                const Spacer(),
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
          padding: EdgeInsets.symmetric(
            vertical: 5.sp,
            horizontal: 10.sp,
          ),
          child: Column(
            children: [
              Text(
                "Создайте аккаунт",
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.sp,
                ),
                child: TextField(
                  controller: Fiocontroller,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                  scrollPadding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "ФИО",
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
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.sp,
                ),
                child: TextField(
                  controller: Rayoncontroller,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                  scrollPadding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Район",
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
                  controller: Bozrastcontroller,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                  scrollPadding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Возраст",
                    hintStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegFinish(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff58CC02),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "СОЗДАТЬ АККАУНТ",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Выполняя вход в аккаунт Youcan, вы соглашаетесь с\n                             sнашимииvУсловиями\n                    Политикой конфиденциальности.",
                style: TextStyle(
                  color: Color(0xff6E86AD),
                  fontSize: 15.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
