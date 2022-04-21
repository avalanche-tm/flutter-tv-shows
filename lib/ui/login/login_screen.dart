import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../action_emitter/action_listener_hook.dart';
import '../auth/auth_provider.dart';
import '../auth/auth_state.dart';
import '../routing/routes.dart';

part 'login_screen.g.dart';

@hcwidget
Widget loginScreen(BuildContext context, WidgetRef ref) {
  final emailController = useTextEditingController();
  final passwordController = useTextEditingController();
  final emailValidNotifier = useValueNotifier(false);
  final passwordValidNotifier = useValueNotifier(false);
  final rememberMe = useValueNotifier(true);

  useActionListener((compositeSubscription) =>
      _handleActions(compositeSubscription, ref, context));

  ref.listen<AuthState>(authProvider, (previous, next) {
    next.whenOrNull(
      error: (msg) => _showSnackBar(context, msg),
    );
  });

  return SafeArea(
    child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/images/img-login-logo.svg'),
          ),
          _EmailTextField(emailController, emailValidNotifier),
          _PasswordTextField(passwordController, passwordValidNotifier),
          _RememberMe(rememberMe),
          _LoginButton(
              emailController: emailController,
              passwordController: passwordController,
              rememberMe: rememberMe,
              emailValidNotifier: emailValidNotifier,
              passwordValidNotifier: passwordValidNotifier),
        ],
      ),
    ),
  );
}

void _handleActions(
  CompositeSubscription compositeSubscription,
  WidgetRef ref,
  BuildContext context,
) {
  compositeSubscription.add(
    ref.read(authProvider.notifier).action.listen((action) {
      action.whenOrNull(
        navigateToShowList: () =>
            Navigator.of(context).pushReplacementNamed(AppRoute.showList),
      );
    }),
  );
}

void _showSnackBar(BuildContext context, String errorMsg) {
  final snackBar = SnackBar(
    content: Text(errorMsg),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

@hcwidget
Widget __loginButton(
  WidgetRef ref, {
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required ValueNotifier<bool> rememberMe,
  required ValueNotifier<bool> emailValidNotifier,
  required ValueNotifier<bool> passwordValidNotifier,
}) {
  final loggingIn = ref.watch(authProvider) is AuthStateLoggingIn;
  final emailValid = useValueListenable(emailValidNotifier);
  final passwordValid = useValueListenable(passwordValidNotifier);

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
      ),
      //TODO: extract this function and supply it to login button as prop
      onPressed: emailValid && passwordValid
          ? () async => await _onLoginPressed(
                ref,
                emailController.text,
                passwordController.text,
                rememberMe.value,
              )
          : null,
      child: !loggingIn
          ? const Text('Login')
          : const SizedBox(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(color: Colors.white),
            ),
    ),
  );
}

Future<void> _onLoginPressed(
    WidgetRef ref, String email, String password, bool rememberMe) async {
  // if (!loggingIn) {
  return ref.read(authProvider.notifier).loginWithEmail(
        email,
        password,
        rememberMe,
      );
  // }
}

@hwidget
Widget __rememberMe(ValueNotifier<bool> remeberMe) {
  final checked = useValueListenable(remeberMe);
  return Row(
    children: [
      Checkbox(
          value: checked,
          onChanged: (value) {
            remeberMe.value = value!;
          }),
      const Text('Remember me'),
    ],
  );
}

@hwidget
Widget __passwordTextField(TextEditingController controller,
    ValueNotifier<bool> isFieldValidNotifier) {
  final formKey = useRef(GlobalKey<FormState>());
  final revealPassword = useState(false);

  return Form(
    key: formKey.value,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: controller,
          obscureText: !revealPassword.value,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              onPressed: () => revealPassword.value = !revealPassword.value,
              icon: revealPassword.value
                  ? SvgPicture.asset('assets/icons/ic-characters-hide.svg')
                  : SvgPicture.asset('assets/icons/ic-hide-password.svg'),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }
            return null;
          },
          onChanged: (value) {
            isFieldValidNotifier.value = formKey.value.currentState!.validate();
          }),
    ),
  );
}

@hwidget
Widget __emailTextField(TextEditingController emailController,
    ValueNotifier<bool> isFieldValidNotifier) {
  final formKey = useRef(GlobalKey<FormState>());
  return Form(
    key: formKey.value,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }
            return null;
          },
          onChanged: (value) {
            isFieldValidNotifier.value = formKey.value.currentState!.validate();
          }),
    ),
  );
}
