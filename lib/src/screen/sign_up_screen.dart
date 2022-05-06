import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/app_bar.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(title: 'Sign Up'),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Image(
                image: AssetImage('assets/images/sign_up.png'),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              color: const Color(0xffF7F7F7),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter email',
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              color: const Color(0xffF7F7F7),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              color: const Color(0xffF7F7F7),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Confirm password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            InkWell(
              child: Container(
                width: double.infinity,
                height: 60.0,
                // color: const Color(0xff20C3AF),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff20C3AF),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Text(
                'or',
                style: TextStyle(
                  color: Color(0xff838391),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffE2E2E0),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/icon/icon_fb.svg'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffE2E2E0),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Center(
                          child:
                              SvgPicture.asset('assets/icon/icon_twitter.svg')),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffE2E2E0),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Center(
                        child:
                            SvgPicture.asset('assets/icon/icon_linkedin.svg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Already have an account?',
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xffFFB19D),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
