// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_screen.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context, WidgetRef _ref) =>
      loginScreen(_context, _ref);
}

class _LoginButton extends HookConsumerWidget {
  const _LoginButton(
      {Key? key,
      required this.emailController,
      required this.passwordController,
      required this.rememberMe,
      required this.emailValidNotifier,
      required this.passwordValidNotifier})
      : super(key: key);

  final TextEditingController emailController;

  final TextEditingController passwordController;

  final ValueNotifier<bool> rememberMe;

  final ValueNotifier<bool> emailValidNotifier;

  final ValueNotifier<bool> passwordValidNotifier;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) => __loginButton(_ref,
      emailController: emailController,
      passwordController: passwordController,
      rememberMe: rememberMe,
      emailValidNotifier: emailValidNotifier,
      passwordValidNotifier: passwordValidNotifier);
}

class _RememberMe extends HookWidget {
  const _RememberMe(this.remeberMe, {Key? key}) : super(key: key);

  final ValueNotifier<bool> remeberMe;

  @override
  Widget build(BuildContext _context) => __rememberMe(remeberMe);
}

class _PasswordTextField extends HookWidget {
  const _PasswordTextField(this.controller, this.isFieldValidNotifier,
      {Key? key})
      : super(key: key);

  final TextEditingController controller;

  final ValueNotifier<bool> isFieldValidNotifier;

  @override
  Widget build(BuildContext _context) =>
      __passwordTextField(controller, isFieldValidNotifier);
}

class _EmailTextField extends HookWidget {
  const _EmailTextField(this.emailController, this.isFieldValidNotifier,
      {Key? key})
      : super(key: key);

  final TextEditingController emailController;

  final ValueNotifier<bool> isFieldValidNotifier;

  @override
  Widget build(BuildContext _context) =>
      __emailTextField(emailController, isFieldValidNotifier);
}
