import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:you_can/src/presentation/you_can/widget/leding_view_lis.dart';

class LedingPage extends StatelessWidget {
  const LedingPage({super.key});

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
              vertical: 12.sp,
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
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Frame 7.png",
                ),
                SizedBox(height: 2.h),
                Text(
                  "Как подготовиться к ОРТ эффективно?",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  "Смотрите трейлер.?",
                  style: TextStyle(
                    color: Color(0xffFF9409),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "НАБЕРИ ВЫСОКИЕ\n  БАЛЛЫ НА ОРТ",
                  style: TextStyle(
                    color: Color(0xffFF9409),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                ),
                Text(
                  "ВМЕСТЕ С YOUCAN",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFF5C00),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "Регистрация",
                        style: TextStyle(
                          color: Color(0xff0D3D8D),
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        "У МЕНЯ УЖЕ ЕСТЬ АККАУНТ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.5.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                LedingViewLis(),
                SizedBox(height: 1.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
