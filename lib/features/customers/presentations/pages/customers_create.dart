import 'package:flutter/material.dart';

import 'package:fintech_app/core/responsive/responsive.dart';
import 'package:fintech_app/core/theme/theme.dart';
import 'package:fintech_app/features/customers/customers.dart';
import 'package:fintech_app/shared/shared.dart';

class CustomersCreate extends StatelessWidget {
  const CustomersCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: customersCreateFormMobile());
  }
}

//TODO: el nombre esta bien?
class customersCreateFormMobile extends StatelessWidget {
  const customersCreateFormMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text("Registrar Cliente"),
        actions: [IconButton.filled(onPressed: () {}, icon: Icon(Icons.close))],
      ),
      body: Padding(
        //TODO: se van a estandarizar los paddings?
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ConstrainedBox(
          //TODO: medida global?
          constraints: BoxConstraints(minWidth: 420),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignInEmailInput(),
              const SizedBox(height: 24),
              ImagePickerContainer(),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nombre",
                  prefixIcon: Icon(Icons.person_outline),
                  suffixIcon: Icon(Icons.check),
                ),
              ),
              const SizedBox(height: 16),
              FilledButtonCustom(onPressed: () {}, label: "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: cambiar nombre del widget
//TODO: reorganizar los inputs
class SignInEmailInput extends StatelessWidget {
  const SignInEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Teléfono",
            prefixIcon: Icon(Icons.phone_outlined),
            suffixIcon: Icon(Icons.check),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Direccion",
            prefixIcon: Icon(Icons.home_outlined),
            suffixIcon: Icon(Icons.check),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Referencia",
            prefixIcon: Icon(Icons.email_outlined),
            suffixIcon: Icon(Icons.check),
          ),
        ),
      ],
    );
  }
}
