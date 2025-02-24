// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:you_can/src/presentation/you_can/view/video_view.dart';

class Reminderview extends StatefulWidget {
  const Reminderview({super.key});

  @override
  State<Reminderview> createState() => _ReminderviewState();
}

class _ReminderviewState extends State<Reminderview> {
  Color containerColor = Color(0xff5B7CB2); // Dastlabki rang

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
              vertical: 15.sp,
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
          padding: EdgeInsets.symmetric(
            vertical: 15.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Получайте напоминания и\n        достигайте целей!",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 3.h),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 30.sp,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff5B7CB2),
                    width: 0.5.w,
                  ),
                  borderRadius: BorderRadius.circular(15.sp),
                  color: Color(0xff0D3D8D),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "www.youcan.com запрашивает\nразрешение на:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              size: 23.sp,
                              color: Color.fromARGB(255, 120, 33, 116),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          Text(
                            "Показ уведомлений",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.sp,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "НЕТ",
                              style: TextStyle(
                                color: Color(0xff99B5E3),
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(width: 3.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  containerColor =
                                      Colors.green; // Rangi o'zgaradi
                                });
                              },
                              child: Text(
                                "ДА",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoView(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "ДАЛЕЕ",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
