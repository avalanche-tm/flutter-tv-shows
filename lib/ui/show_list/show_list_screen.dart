import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../../app/gen/assets.gen.dart';
import '../../domain/shows/show.dart';
import '../action_emitter/action_listener_hook.dart';
import '../auth/auth_provider.dart';
import '../hooks/fade_in_animation_hook.dart';
import '../hooks/post_frame_call_hook.dart';
import '../routing/routes.dart';
import '../shows/shows_provider.dart';
import '../shows/shows_state.dart';
import '../widgets/simple_snackbar.dart';

part 'show_list_screen.g.dart';

@hcwidget
Widget showListScreen(BuildContext context, WidgetRef ref) {
  usePostFrameCall(() => ref.read(showsProvider.notifier).getShows());

  useActionListener((compositeSubscription) =>
      _handleActions(compositeSubscription, ref, context));

  ref.listen<ShowsState>(showsProvider, (previous, next) {
    next.whenOrNull(
      error: (errorMsg, items) => _showSnackBarError(context, errorMsg),
    );
  });

  return Scaffold(
    extendBodyBehindAppBar: true,
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shows',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                    onPressed: () async {
                      await ref.read(authProvider.notifier).logout();
                    },
                    iconSize: 40,
                    icon: Assets.icons.icLogout.svg(),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: _ShowsSection(),
            ),
          ],
        ),
      ),
    ),
  );
}

@hcwidget
Widget __showsSection(BuildContext context, WidgetRef ref) {
  final state = ref.watch(showsProvider);

  return state.when(
    loading: (data) => const Center(
      child: CircularProgressIndicator(),
    ),
    loaded: (data) => _ShowsList(data),
    error: (errorMsg, data) => data.isNotEmpty
        ? _ShowsList(data)
        : const Center(
            child: Text('No shows :('),
          ),
  );
}

@swidget
Widget __showsList(List<Show> shows) {
  return ListView.builder(
    itemCount: shows.length,
    itemBuilder: (BuildContext context, int index) {
      var item = shows[index];
      return _ShowItem(item);
    },
  );
}

@hcwidget
Widget __showItem(BuildContext context, WidgetRef ref, Show show) {
  final animation = useFadeInAnimation();

  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: FadeTransition(
      opacity: animation,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          Navigator.of(context)
              .pushNamed(AppRoute.showDetails, arguments: show.id);
        },
        child: SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: FadeInImage.assetNetwork(
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                  image: show.imageUrl,
                  placeholder: Assets.images.imgPlaceholder.path,
                  imageErrorBuilder: (context, _, __) => Container(
                    width: 100,
                    height: 150,
                    color: Colors.grey.shade100,
                  ),
                  placeholderFit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Text(
                  show.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
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

void _showSnackBarError(BuildContext context, String errorMsg) {
  final snackBar = simpleSnackBar(errorMsg);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
