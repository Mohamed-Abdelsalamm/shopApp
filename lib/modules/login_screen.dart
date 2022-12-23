import 'package:flutter/material.dart';
import 'package:shop/modules/register_screen.dart';
import 'package:shop/shared/components/form_field.dart';
import '../shared/components/button.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController? emailController;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              suffixIcon: Icon(Icons.remove_red_eye),
              label: 'Password',
              textInputType: TextInputType.visiblePassword,
              validation: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Your Password ';
                }
                return null;
              },
              prefixIcon: const Icon(Icons.lock),
              onTap: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonReuse(
              buttonText: 'Login',
              onPressed: () {
                formKey.currentState!.validate();
              },
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have Account ?",/*style: TextStyle(fontWeight: FontWeight.bold),*/),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) =>RegisterScreen(), ));
                  },
                  child: const Text('Register Now',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
