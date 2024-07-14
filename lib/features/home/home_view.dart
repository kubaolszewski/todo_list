import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/utils/app_consts/app_consts.dart';
import '../../common/widgets/app_bar/custom_app_bar.dart';
import '../../common/widgets/app_bottom_nav_bar/app_bottom_nav_bar.dart';
import '../../common/widgets/app_scaffold/app_scaffold.dart';
import '../../generated/locale_keys.g.dart';
import 'cubit/home_cubit.dart';
import 'cubit/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.appTitle,
      ),
      bottomNavigationBar:
          const AppBottomNavigationBar(currentIndex: AppConsts.homeScreenIndex),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: state.todos.length,
                itemBuilder: (context, index) => Card(
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Center(
                        child: Text(
                      state.todos[index].title!,
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ))
            ],
          );
        },
      ),
    );
  }
}
