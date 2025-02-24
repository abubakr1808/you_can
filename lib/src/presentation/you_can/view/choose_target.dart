import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:you_can/src/presentation/you_can/view/ReminderView.dart';

class ChooseTarget extends StatefulWidget {
  const ChooseTarget({super.key});

  @override
  State<ChooseTarget> createState() => _ChooseTargetState();
}

class _ChooseTargetState extends State<ChooseTarget> {
  int? ochibyonish;
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
                "Здорово! Теперь выберите\n                 цель дня.",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 3.h),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 25.sp,
                ),
                height: 19.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.sp,
                  ),
                  color: Color(0xff0D3D8D),
                  border: Border.all(
                    color: Color.fromARGB(255, 104, 137, 190),
                    width: 2,
                  ),
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(), // Scrollni o‘chiradi
                  shrinkWrap: true,
                  itemCount: textlegmo.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          ochibyonish = index;
                        });
                      },
                      child: Container(
                        height: 4.5.h,
                        color: ochibyonish == index
                            ? Color(0xff245AB4)
                            : Color(0xff0D3D8D),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.sp,
                                vertical: 10.sp,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    textlegmo[index],
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    textr[index],
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: ochibyonish != null
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Reminderview(),
                          ),
                        );
                      }
                    : null,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ochibyonish != null
                        ? Color(0xff58CC02)
                        : Color(0xff5B7CB2),
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

List<String> textlegmo = [
  "Лёгкая",
  "Обычная",
  "Серьёзная",
  "Интенсивная",
];

List<String> textr = [
  "15 минут в день",
  "20 минут в день",
  "25 минут в день",
  "30 минут в день",
];
