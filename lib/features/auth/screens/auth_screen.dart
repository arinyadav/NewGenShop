  import 'package:amazon/common/widgets/custom_button.dart';
  import 'package:amazon/common/widgets/custom_textfield.dart';
  import 'package:amazon/constants/global_variables.dart';
  import 'package:amazon/features/auth/services/auth_service.dart';
  import 'package:flutter/material.dart';

  enum Auth {
    signin,
    signup,
  }

  class AuthScreen extends StatefulWidget {
    static const String routeName = '/auth-screen';
    const AuthScreen({super.key});

    @override
    State<AuthScreen> createState() => _AuthScreenState();
  }

  class _AuthScreenState extends State<AuthScreen> {
    //This is the default value of auth
    Auth _auth = Auth.signup;     
    final _signUpFormKey = GlobalKey<FormState>();
    final _signInFormKey = GlobalKey<FormState>();
    final AuthService authService = AuthService();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _nameController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
      _nameController.dispose();
    }

    void signUpUser() {
      authService.signUpUser(
          context: context,
          email: _emailController.text,
          password: _passwordController.text,
          name: _nameController.text);
    }

    void signInUser() {
      authService.signInUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text,
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: GlobalVariables.greyBackgroundCOlor,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(169, 208, 142, 1), // Lighter green shade
              Color.fromRGBO(255, 241, 189, 1),],
            ),
          ),

           child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assests/images/logo_shopping.png', // Replace with your image asset path
                      height: 150,
                    ),
                    const SizedBox(height: 10),
                    // const Text(
                    //   'Welcome to NewGen Shopp!',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 24,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.white,
                    //   ),
                    // ),
                  ],
                ),
                  ListTile(
                    tileColor: _auth == Auth.signup
                        ? GlobalVariables.backgroundColor
                        : GlobalVariables.greyBackgroundCOlor,
                    title: const Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Radio(
                      activeColor: GlobalVariables.secondaryColor,
                      value: Auth.signup,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                  if (_auth == Auth.signup)
                    Container(
                      // controllers will reamin same they wotn't be change will have the same data
                      padding: const EdgeInsets.all(8),
                    // color: GlobalVariables.backgroundColor,
                      child: Form(
                        key: _signUpFormKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller:_nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),

                            const SizedBox(
                              height: 5,
                            ),
                             TextFormField(
                                controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
                            const SizedBox(
                              height: 5,
                            ),
                             TextFormField(
                            controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomButton(
                              text: 'SignUp',
                              onTap: () {
                                if (_signUpFormKey.currentState!.validate()) {
                                  signUpUser();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ListTile(
                    tileColor: _auth == Auth.signin
                        ? GlobalVariables.backgroundColor
                        : GlobalVariables.greyBackgroundCOlor,
                    title: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Radio(
                      activeColor: GlobalVariables.secondaryColor,
                      value: Auth.signin,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                  if (_auth == Auth.signin)
                    Container(
                      padding: const EdgeInsets.all(8),
                    //  color: GlobalVariables.backgroundColor,
                      child: Form(
                        key: _signInFormKey,
                        child: Column(
                          children: [
                              TextFormField(
                                controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),

                            const SizedBox(
                              height: 5,
                            ),
                           TextFormField(
                            controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),

                            const SizedBox(
                              height: 5,
                            ),
                            CustomButton(
                                text: 'SignIn',
                                onTap: () {
                                  if (_signInFormKey.currentState!.validate()) {
                                    signInUser();
                                  }
                                }),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
