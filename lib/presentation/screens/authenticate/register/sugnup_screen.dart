import 'package:ecommercev2/busnicess_logic/cubit/register/register_cubit.dart';
import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/repository/auth_repo.dart';
import 'package:ecommercev2/presentation/screens/authenticate/register/signup_form.dart';
import 'package:ecommercev2/presentation/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key, required this.repo}) : super(key: key);
  final AuthenticationRepo repo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: BlocProvider(
              create: (context) =>RegisterCubit(repository: repo),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArrowBack(
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    'Signup',
                    style: TextStyle(fontSize: 30, color: Color(0xff323232)),
                  ),
                RegisterForm(),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () => Navigator.pushReplacementNamed(context, loginScreen),
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: 'Already have an account?  ',
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                  color: Color(0xff3C3C3C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400))
                        ]),
                      ),
                    ),
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