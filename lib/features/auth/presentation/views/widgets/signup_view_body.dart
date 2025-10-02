import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_tex_field.dart';
import '../../../../../core/widgets/password_field.dart';
import 'have_an_account_widget.dart';
import 'terms_and_conditions.dart';


class SignupViewBody extends StatelessWidget {
 const SignupViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    onSaved: (value) {
                    },
                    hintText: 'الاسم كامل',
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                    onSaved: (value) {
                    },
                    hintText: 'البريد الإلكتروني',
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 16,
                ),
                PasswordField(
                  onSaved: (value) {
      
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TermsAndConditionsWidget(
                  onChanged: (val) {
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
      
                    }
                 ,
                  text: 'إنشاء حساب جديد',
                ),
                const SizedBox(
                  height: 26,
                ),
                const HaveAnAccountWidget(),
              ],
            ),
          ),
      ),
    );
  }
}