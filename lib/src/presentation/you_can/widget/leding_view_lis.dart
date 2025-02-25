import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LedingViewLis extends StatelessWidget {
  const LedingViewLis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 19.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000),
            blurRadius: 1,
            offset: Offset(0, 1.2),
          ),
        ],
        borderRadius: BorderRadius.circular(14),
        color: Color(0xff022F7B),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Расширьте свой кругозор и подготовьтесь к ОРТ!\n     Изучите следующие предметы, чтобы быть\n                       готовыми к испытаниям",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 6.h,
              child: ListView.builder(
                itemCount: textf.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.maps_home_work_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              textf[index],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> textf = [
  "Математика",
  "Кыргызский",
  "Русский",
  "Химия",
  "Биология",
  "История",
  "Физика",
  "Английский"
];
