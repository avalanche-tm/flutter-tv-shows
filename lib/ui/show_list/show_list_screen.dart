import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/shows/show.dart';
import '../action_emitter/action_listener_hook.dart';
import '../auth/auth_provider.dart';
import '../hooks/fade_in_animation_hook.dart';
import '../hooks/post_frame_call_hook.dart';
import '../routing/routes.dart';
import '../shows/shows_provider.dart';
import '../shows/shows_state.dart';

part 'show_list_screen.g.dart';

@hcwidget
Widget showListScreen(BuildContext context, WidgetRef ref) {
  usePostFrameCall(() => ref.read(showsProvider.notifier).getShows());
  useActionListener((compositeSubscription) =>
      _handleActions(compositeSubscription, ref, context));

  ref.listen<ShowsState>(showsProvider, (previous, next) {
    next.whenOrNull(
      error: (errorMsg, items) =>
          _showSnackBarError(context, 'Loading shows failed.'),
    );
  });

  return SafeArea(
    child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Shows'),
                IconButton(
                  onPressed: () async {
                    await ref.read(authProvider.notifier).logout();
                  },
                  icon: SvgPicture.asset('assets/icons/ic-logout.svg'),
                ),
              ],
            ),
          ),
          const Expanded(
            child: _ShowsSection(),
          ),
          // ElevatedButton(
          //   onPressed: () async {
          //     await ref.read(showsProvider.notifier).getShows();
          //   },
          //   child: const Text('Get Shows'),
          // ),
        ],
      ),
    ),
  );
}

@hcwidget
Widget __showsSection(BuildContext context, WidgetRef ref) {
  final state = ref.watch(showsProvider);
  final isLoading = state is ShowsStateLoading;

  return isLoading
      ? const Center(
          child: CircularProgressIndicator(),
        )
      : ListView.builder(
          itemCount: state.shows.length,
          itemBuilder: (BuildContext context, int index) {
            var item = state.shows[index];
            return _ShowItem(item);
          },
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

@hcwidget
Widget __showItem(BuildContext context, WidgetRef ref, Show show) {
  final animation = useFadeInAnimation();

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FadeTransition(
      opacity: animation,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          Navigator.of(context)
              .pushNamed(AppRoute.showDetails, arguments: show.id);
        },
        child: SizedBox(
          height: 150,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://api.infinum.academy' + show.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(show.title),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void _showSnackBarError(BuildContext context, String errorMsg) {
  final snackBar = SnackBar(
    content: Text(errorMsg),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
