import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../../app/gen/assets.gen.dart';
import '../../domain/validators/validators.dart';
import '../action_emitter/action_listener_hook.dart';
import '../auth/auth_provider.dart';
import '../auth/auth_state.dart';
import '../extensions/extensions.dart';
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
      error: (msg) => context.showSnackBar(message: msg),
    );
  });

  return Scaffold(
    extendBodyBehindAppBar: true,
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Assets.images.imgLoginLogo.svg(),
                ),
                const SizedBox(height: 70),
                _EmailTextField(emailController, emailValidNotifier),
                const SizedBox(height: 10),
                _PasswordTextField(passwordController, passwordValidNotifier),
                _RememberMe(rememberMe),
                const SizedBox(height: 25),
                _LoginButton(
                    emailController: emailController,
                    passwordController: passwordController,
                    rememberMe: rememberMe,
                    emailValidNotifier: emailValidNotifier,
                    passwordValidNotifier: passwordValidNotifier),
              ],
            ),
          ),
        ),
      ),
    ),
  );
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
        elevation: 0,
      ),
      onPressed: emailValid && passwordValid && !loggingIn
          ? () async => await _onLoginPressed(
                ref,
                emailController.text,
                passwordController.text,
                rememberMe.value,
              )
          : null,
      child: !loggingIn
          ? const Text('LOG IN')
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
  return ref.read(authProvider.notifier).loginWithEmail(
        email,
        password,
        rememberMe,
      );
}

@hwidget
Widget __rememberMe(BuildContext context, ValueNotifier<bool> remeberMe) {
  final checked = useValueListenable(remeberMe);
  return Row(
    children: [
      Checkbox(
          value: checked,
          onChanged: (value) {
            remeberMe.value = value!;
          }),
      Text(
        'Remember me',
        style: Theme.of(context).textTheme.labelMedium,
      ),
    ],
  );
}

@hwidget
Widget __passwordTextField(
  BuildContext context,
  TextEditingController controller,
  ValueNotifier<bool> isFieldValidNotifier,
) {
  final formKey = useRef(GlobalKey<FormState>());
  final passwordHidden = useState(true);

  return Form(
    key: formKey.value,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: controller,
          obscureText: passwordHidden.value,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              onPressed: () => passwordHidden.value = !passwordHidden.value,
              icon: passwordHidden.value
                  ? Assets.icons.icHidePassword.svg()
                  : Assets.icons.icCharactersHide.svg(),
            ),
          ),
          style: Theme.of(context).textTheme.labelLarge,
          validator: (value) =>
              isFieldEmptyValidator(value, 'Password is required'),
          onChanged: (value) {
            isFieldValidNotifier.value = formKey.value.currentState!.validate();
          }),
    ),
  );
}

@hwidget
Widget __emailTextField(
  BuildContext context,
  TextEditingController emailController,
  ValueNotifier<bool> isFieldValidNotifier,
) {
  final formKey = useRef(GlobalKey<FormState>());
  return Form(
    key: formKey.value,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
          style: Theme.of(context).textTheme.labelLarge,
          validator: (value) =>
              isFieldEmptyValidator(value, 'Email is required'),
          onChanged: (value) {
            isFieldValidNotifier.value = formKey.value.currentState!.validate();
          }),
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
