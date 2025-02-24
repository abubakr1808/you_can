import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:you_can/src/presentation/you_can/view/choose_target.dart';

class ChooseView extends StatefulWidget {
  const ChooseView({super.key});

  @override
  State<ChooseView> createState() => _ChooseViewState();
}

int? selectedindexs;

class _ChooseViewState extends State<ChooseView> {
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
            horizontal: 10.sp,
            vertical: 15.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 6.h),
              Text(
                "Как вы узнали о Youcan?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23.sp,
                  ),
                  child: GridView.builder(
                    itemCount: imageilova.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Ikkita qatorga bo'lish
                      crossAxisSpacing: 27.sp,
                      mainAxisSpacing: 15.sp,
                      childAspectRatio: 1.2,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedindexs = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedindexs == index
                                ? Color(0xff1E5BAA)
                                : Color(0xff0D3D8D),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 2,
                              color: selectedindexs == index
                                  ? Colors.white
                                  : Color(0xff91A9C7),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  imageilova[index],
                                ),
                                SizedBox(height: 5.sp),
                                Text(
                                  textbir[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
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
              ),
              GestureDetector(
                onTap: selectedindexs != null
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseTarget(),
                          ),
                        );
                      }
                    : null, // Agar hech narsa tanlanmagan bo'lsa, tugma ishlamaydi
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: selectedindexs != null
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

List<String> textbir = [
  "Из поиска\nв Google",
  "Из TikTok",
  " По\nтелевидению",
  "Из новостей,\nстатьи, блога",
  " Из видео\nна Youtube",
  "      Из\nсоцсетей",
  "  От друзей\nили родных",
  "Другое",
];

List<String> imageilova = [
  "assets/images/icons8-google-100 1 (2).png",
  "assets/images/icons8-тикток-100 1.png",
  "assets/images/icons8-телевизор-100 (1) 1.png",
  "assets/images/icons8-новости-100 1.png",
  "assets/images/icons8-youtube-play-100 (1) 1.png",
  "assets/images/icons8-instagram-100 1.png",
  "assets/images/person.png",
  "assets/images/icons8-другие-посылки-100 1.png",
];
