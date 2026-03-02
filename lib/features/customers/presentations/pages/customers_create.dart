import 'package:flutter/material.dart';

import 'package:fintech_app/core/theme/theme.dart';
import 'package:fintech_app/core/responsive/responsive.dart';
import 'package:fintech_app/shared/shared.dart';

class CustomersCreate extends StatelessWidget {
  const CustomersCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: customersCreateFormMobile());
  }
}

class customersCreateFormMobile extends StatelessWidget {
  const customersCreateFormMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        //TODO: se van a estandarizar los paddings?
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          //TODO: medida global?
          constraints: BoxConstraints(minWidth: 420),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Registrar Cliente",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  IconButton.filled(onPressed: () {}, icon: Icon(Icons.close)),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 8), Divider(), SignInEmailInput()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInEmailInput extends StatelessWidget {
  const SignInEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Or continue with email address"),
        const SizedBox(height: 12),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            prefixIcon: Icon(Icons.email_outlined),
            suffixIcon: Icon(Icons.check),
          ),
        ),
        const SizedBox(height: 12),
        FilledButtonCustom(onPressed: () {}, label: "Continue"),
        Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text("Don't have an account? "),
              TextButton(onPressed: () {}, child: Text("Sign Up")),
            ],
          ),
        ),
      ],
    );
  }
}
