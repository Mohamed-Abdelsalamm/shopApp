import 'package:flutter/material.dart';
import '../shared/components/button.dart';
import '../shared/components/form_field.dart';

class RegisterScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController? emailController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sgin Up',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  TextFormFieldReuse(
                    controller: emailController,
                    label: 'First Name',
                    hint: 'Your first name',
                    textInputType: TextInputType.emailAddress,
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Your Name ';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.person_outline),
                    onTap: () {},
                  ),
                  TextFormFieldReuse(
                    controller: emailController,
                    label: 'Last Name',
                    hint: 'Your Last name',
                    textInputType: TextInputType.emailAddress,
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Your Email Address ';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.person_outline),
                    onTap: () {},
                  ),
                  TextFormFieldReuse(
                    controller: emailController,
                    label: 'Email',
                    hint: 'Example@gamil.com',
                    textInputType: TextInputType.emailAddress,
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Your Email Address ';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.email_outlined),
                    onTap: () {},
                  ),
                  TextFormFieldReuse(
                    // hint: 'Example@gamil.com',
                    controller: emailController,
                    label: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Your Password ';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    onTap: () {},
                  ),
                  TextFormFieldReuse(
                    hint: 'Enter Your Password again ',
                    controller: emailController,
                    label: 'confirm password',
                    textInputType: TextInputType.visiblePassword,
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Your Password again ';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ButtonReuse(
                    buttonText: 'Sign up',
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an Account",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
