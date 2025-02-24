import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:you_can/src/presentation/you_can/view/choose_view.dart';

class RegisterPageMobile extends StatefulWidget {
  const RegisterPageMobile({super.key});

  @override
  State<RegisterPageMobile> createState() => _RegisterPageMobileState();
}

class _RegisterPageMobileState extends State<RegisterPageMobile> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0D3D8D),
        title: Container(
          height: 5.h,
          decoration: BoxDecoration(
            color: Color(0xff0D3D8D),
            borderRadius: BorderRadius.circular(
              19.sp,
            ),
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
              vertical: 10.sp,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                ),
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
                  child: Image.asset(
                    "assets/images/language.png",
                  ),
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
        // height: 90.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/verification.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                width: 63.w,
                height: 20.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageflage.length,
                  itemBuilder: (context, index) {
                    bool isSelected =
                        selectedIndex == index; // Tanlanganligini tekshirish
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Tanlangan indexni yangilash
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(9),
                        width: 27.w,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Color(0xff1E5BAA)
                              : Color(
                                  0xff0D3D8D), // Tanlangan bo‘lsa rangi o‘zgaradi
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            width: 2,
                            color: isSelected
                                ? Colors.white
                                : Color(
                                    0xff91A9C7), // Tanlangan bo‘lsa chegarasi o‘zgaradi
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.sp,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                imageflage[index],
                              ),
                              Text(
                                textflage[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                texxtuchih[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w100,
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
              Spacer(),
              GestureDetector(
                onTap: selectedIndex != null
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseView(),
                          ),
                        );
                      }
                    : null, // Agar hech narsa tanlanmagan bo'lsa, tugma ishlamaydi
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: selectedIndex != null
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

List<String> imageflage = [
  "assets/images/russain.png",
  "assets/images/russain (1).png",
];

List<String> textflage = [
  "русском",
  "кыргызском",
];

List<String> texxtuchih = [
  "0 учащихся",
  "0 учащихся",
];
