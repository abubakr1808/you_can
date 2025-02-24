import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:you_can/src/presentation/registration/registration.dart'; // URL launcher import qilindi

class VideoView extends StatelessWidget {
  const VideoView({super.key});

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
            vertical: 15.sp,
            horizontal: 10.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "   Посмотри видео и узнай,\nкак подготовиться вместе с\n                   Youcan!",
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: 17.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40.h,
                child: GestureDetector(
                  onTap: () async {
                    final Uri uri = Uri.parse("https://www.youtube.com");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw "YouTube ochilmadi";
                    }
                  },
                  child: Image.asset(
                    "assets/images/Без названия.png",
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registration(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.sp),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff58CC02),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "ДАЛЕЕ",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
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
