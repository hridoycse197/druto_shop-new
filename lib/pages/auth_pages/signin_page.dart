import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool checked = false;
  final imagePath = 'assets/images/';

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        title: const Text(
          'Sign in Account',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: ColorResources.BUTTON_TEXT_COLOR),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: ColorResources.BUTTON_TEXT_COLOR,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath + 'app_logo.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 07.0),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: ColorResources.BUTTON_TEXT_COLOR,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: "demo@gmail.com",
                      hintStyle: TextStyle(
                        color: ColorResources.BUTTON_TEXT_COLOR,
                        fontSize: 12,
                      ),
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.email,
                        color: ColorResources.PRIMARY_COLOR,
                        //size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 07.0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: ColorResources.BUTTON_TEXT_COLOR,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Type password",
                      hintStyle: TextStyle(
                        color: ColorResources.BUTTON_TEXT_COLOR,
                        fontSize: 12,
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorResources.PRIMARY_COLOR,
                        //size: 20,
                      ),
                      suffix: Icon(Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        value: checked,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: ColorResources.BUTTON_TEXT_COLOR,
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          'Forget password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: ColorResources.BUTTON_TEXT_COLOR,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      primary: ColorResources.PRIMARY_COLOR,
                      minimumSize: const Size(double.infinity, 50.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: ColorResources.BUTTON_TEXT_COLOR,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Text(
                    "Or",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorResources.BUTTON_TEXT_COLOR,
                      fontSize: 25.0,
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
  }
}
