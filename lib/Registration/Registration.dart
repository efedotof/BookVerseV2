import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:readerabooks/Definingpage/AdditionScreens/Button/ButtonRegistration.dart';
import 'package:readerabooks/Definingpage/AdditionScreens/HeadingText.dart';
import 'package:readerabooks/Definingpage/AdditionScreens/LabelText.dart';
import 'package:readerabooks/HomeScreen/Home.dart';
import 'package:readerabooks/Registration/widgets/TextField.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController patronymicController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons
              .chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 4,
                      child: Lottie.asset(
                        'assets/lottie/loaded.json',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingText(text: 'registration'.tr()),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child:
                            LabelText(text: 'descriptionOnRegistration'.tr()),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width / 1.12,
                child: Column(
                  children: [
                    MyTextFields(
                        hintText: "name", textController: nameController),
                    MyTextFields(
                        hintText: "surname", textController: surnameController),
                    MyTextFields(
                        hintText: "patronymic",
                        textController: patronymicController),
                    MyTextFields(
                        hintText: "birthdate",
                        textController: birthdateController),
                    MyTextFields(
                        hintText: "email", textController: emailController),
                    MyTextFields(
                        hintText: "password",
                        textController: passwordController),
                    MyTextFields(
                        hintText: "repassword",
                        textController: repasswordController),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: ButtonRegistration(
                          text: "ContinueOnRegistration".tr(),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Home()),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
