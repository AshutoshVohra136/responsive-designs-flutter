import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
        ),
        home: const HomePage(),
      ),
    ),
  );
}

Widget getTextField({required String hint}) {
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(width: 0, color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(width: 0, color: Colors.transparent),
        ),
        hintText: hint),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: 52.h,
              ),
              Text(
                'Sign up to Masterminds',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 4.h,
              ),
              Wrap(
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 101, 87, 252),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              getTextField(hint: 'First Name'),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: 'Email'),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: 'Password'),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: 'Confirm Password'),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 101, 87, 252),
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 14.h),
                    ),
                  ),
                  child: const Text('Create Account'),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    'or sign up via',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: const MaterialStatePropertyAll(
                      BorderSide(color: Colors.black26),
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.black87),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 14.h),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/google_logo.png',
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text('Google'),
                    ], //
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Wrap(
                children: [
                  Text(
                    'By signing up to Masterminds you agree to our ',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26),
                  ),
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 101, 87, 252),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
