import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../action_emitter/action_listener_hook.dart';
import '../auth/auth_provider.dart';
import '../routing/routes.dart';

part 'show_list_screen.g.dart';

@hcwidget
Widget showListScreen(BuildContext context, WidgetRef ref) {
  useActionListener((compositeSubscription) =>
      _handleActions(compositeSubscription, ref, context));

  return SafeArea(
    child: Scaffold(
      appBar: AppBar(
        title: const Text('Rare Items Store'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return ['Logout'].map((choice) {
                return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                    onTap: () {
                      ref.read(authProvider.notifier).logout();
                    });
              }).toList();
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [Text('ListView')],
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
        navigateToLogin: () => //
            Navigator.of(context)
                .pushNamedAndRemoveUntil(AppRoute.login, (route) => false),
      );
    }),
  );
}
